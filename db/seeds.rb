# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

puts "Cadastrando Categorias ..."

categories = [
							"Eletrônicos",
 							"Esportes",
 							"Empregos e Negócios",
 							"Finanças",
 							"Serviços"
 							]

categories.each do |category|
	Category.find_or_create_by(description: category)
end

puts "Categorias cadastradas com sucesso!"

#-----------------------------------------------------------#

puts "Cadastrando Administradores padrão ..."

admins = [
	[
		name: "Admin",
		email: "admin@admin.com",
		password: "1234",
		password_confirmation: "1234",
		role: 0
	],
	[
		name: "Teste",
		email: "teste@admin.com",
		password: "1234",
		password_confirmation: "1234",
		role: 1
	]

]

Admin.create!(admins)

puts "Administrador padrão cadastrado com sucesso!"