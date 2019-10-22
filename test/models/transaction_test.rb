require 'test_helper'

class TransactionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "must have a transaction_type associated" do
    transaction = Transaction.new(date: Date.today, value: 9.99, cpf:"123", card: "1234", store_name: "mesbla", store_owner: "marcio")
    assert_not transaction.valid?
  end

  test "must have a store_name" do
    transaction = Transaction.new(date: Date.today, value: 9.99, cpf:"123", card: "1234", transaction_type_id: 1, store_owner: "marcio")
    assert_not transaction.valid?
  end


  test "must have a store_ower" do
    transaction = Transaction.new(date: Date.today, value: 9.99, cpf:"123", card: "1234", transaction_type_id: 1, store_name: "mesbla")
    assert_not transaction.valid?
  end

  test "must have a cpf" do
    transaction = Transaction.new(date: Date.today, value: 9.99, store_owner: "marcio", card: "1234", transaction_type_id: 1, store_owner: "marcio")
    assert_not transaction.valid?
  end

  test "transaction is_credit" do
    transaction = transactions(:one)
    assert_not transaction.is_credit?
  end

  test "must format the CPF accondingly" do
    transaction = transactions(:one)
    assert_equal "111.222.333-45", transaction.formatted_cpf 
  end
end
