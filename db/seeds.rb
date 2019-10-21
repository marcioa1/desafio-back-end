# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

TransactionType.create(code: 1, description: 'Débito', in_out: 'Entrada', signal: '+')
TransactionType.create(code: 2, description: 'Boleto', in_out: 'Saída', signal: '-')
TransactionType.create(code: 3, description: 'Financiamento', in_out: 'Saída', signal: '-')
TransactionType.create(code: 4, description: 'Crédito', in_out: 'Entrada', signal: '+')
TransactionType.create(code: 5, description: 'Recebimento Empréstimo', in_out: 'Entrada', signal: '+')
TransactionType.create(code: 6, description: 'Vendas', in_out: 'Entrada', signal: '+')
TransactionType.create(code: 7, description: 'Recebimento TED', in_out: 'Entrada', signal: '+')
TransactionType.create(code: 8, description: 'Recebimento DOC', in_out: 'Entrada', signal: '+')
TransactionType.create(code: 9, description: 'Aluguel', in_out: 'Saída', signal: '-')
