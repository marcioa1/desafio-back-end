require 'test_helper'

class TransactionTypeTest < ActiveSupport::TestCase

  test "Must have a code" do
    type = TransactionType.new(description: "Credito", in_out:"Entrada", signal: "+")
    assert_not type.valid?
  end

  test "Must have a description" do
    type = TransactionType.new(code: 1, in_out:"Entrada", signal: "+")
    assert_not type.valid?
  end

  test "Must have a in_out" do
    type = TransactionType.new(code: 1, description: "Crédito", signal: "+")
    assert_not type.valid?
  end

  test "Must have a signal" do
    type = TransactionType.new(code: 1, in_out:"Entrada", description: "Venda")
    assert_not type.valid?
  end




end
