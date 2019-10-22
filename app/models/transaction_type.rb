class TransactionType < ApplicationRecord
  validates :code, :description, :in_out, :signal, presence: true
end
