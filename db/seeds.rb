# encoding: utf-8

Papel.delete_all
admin= Papel.create!(nome: 'Administrador')
usuario= Papel.create!(nome: 'Usuário Avançado')
visitante= Papel.create!(nome: 'Visitante')

Usuario.delete_all
Usuario.create!(
    email: 'admin@example.com', 
    password: '123456', 
    password_confirmation: '123456',
    papel: admin)


Usuario.create!(
		email: 'usuario@example.com', 
		password: '123456', 
		password_confirmation: '123456',
    papel: usuario)


