class Transaction < ApplicationRecord

  belongs_to :transaction_type

  def self.parse import_file
    Transaction.delete_all
    File.foreach( import_file.path ) do |line|
      Transaction.init(line)
    end
  end

  def self.init line
    transaction                  = Transaction.new
    transaction.transaction_type_id = line[0,1].to_i
    transaction.date             = Transaction.get_date line
    transaction.value            = line[10,9].to_i / 100.0
    transaction.cpf              = line[19,10]
    transaction.card             = line[30,12]
    transaction.store_owner      = line[48,14].strip
    transaction.store_name       = line[62,18].strip
    transaction.save
  end

  def self.get_date line
    date_str = line[1,8]
    date = date_str[0,4] + "-" + date_str[4,2] + "-" + date_str[6,2]
    hour_str = line[42,6]
    hour = hour_str[0,2] + ":" + hour_str[2,2] + ":" + hour_str[4,2]
    Time.zone.parse(date + ' ' + hour)
  end
end
