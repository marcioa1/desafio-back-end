class CreateTransactions < ActiveRecord::Migration[5.2]
  def change
    create_table :transactions do |t|
      t.integer :transaction_id
      t.date :date
      t.decimal :value
      t.string :cpf
      t.string :card
      t.string :store_owner
      t.string :store_name

      t.timestamps
    end
  end
end
