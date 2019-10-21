class CreateTransactionTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :transaction_types do |t|
      t.integer :code
      t.string :description
      t.string :in_out
      t.string :signal

      t.timestamps
    end
  end
end
