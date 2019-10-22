class Transaction < ApplicationRecord

  def self.parse import_file
    File.foreach( import_file.path ).with_index do |line, index|

    # Process each line.
    puts(line)
    Transaction.init(line)
    # For any errors just raise an error with a message like this:
    #   raise "There is a duplicate in row #{index + 1}."
    # And your controller will redirect the user and show a flash message.
    end
  end

  def self.init line
    transaction_type = line[0,1].to_i
    date_str = line[1,8]
    # byebug
    date = date_str[0,4] + "-" + date_str[4,2] + "-" + date_str[6,2]
    puts(date)
    value = line[10,9].to_i / 100.0
    puts value
    cpf = line[19,10]
    puts(cpf)
    card = line[30,12]
    puts(card)
    hour_str = line[42,6]
    hour = hour_str[0,2] + ":" + hour_str[2,2] + ":" + hour_str[4,2]
    puts(hour)
    owner_name = line[48,14]
    puts(owner_name)
    store_name = line[62,18]
    puts(store_name)
    transaction = Transaction.new
    transaction.date = Time.zone.parse(date + ' ' + hour)
    transaction.value = value
    transaction.cpf   = cpf
    transaction.card  = card
    transaction.store_name = store_name
    transaction.store_owner = owner_name
    transaction.save
  end
end
