class CreateTransactions < ActiveRecord::Migration[5.2]
  def change
    create_table :transactions do |t|
      t.references :transaction_type
      t.datetime :date
      t.decimal :value
      t.string :cpf
      t.string :card
      t.string :store_owner
      t.string :store_name

      t.timestamps
    end
  end
end
