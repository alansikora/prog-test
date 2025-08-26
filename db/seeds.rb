# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).

# Limpar tarefas existentes
Task.destroy_all

puts "Criando tarefas de exemplo..."

tasks_data = [
  {
    title: "Configurar ambiente de desenvolvimento",
    description: "Instalar Ruby, Rails, PostgreSQL e configurar o editor de código",
    priority: 5,
    completed: true
  },
  {
    title: "Estudar documentação do Rails",
    description: "Ler os Rails Guides sobre Active Record e Action Controller",
    priority: 4,
    completed: false
  },
  {
    title: "Criar primeiro modelo",
    description: "Implementar o modelo User com validações básicas",
    priority: 3,
    completed: true
  },
  {
    title: "Implementar autenticação",
    description: "Adicionar sistema de login e registro de usuários",
    priority: 5,
    completed: false
  },
  {
    title: "Escrever testes unitários",
    description: "Criar testes para os modelos e controllers principais",
    priority: 2,
    completed: false
  },
  {
    title: "Revisar código",
    description: "Fazer code review e refatorar partes complexas",
    priority: 3,
    completed: false
  },
  {
    title: "Configurar CI/CD",
    description: "Setup do GitHub Actions para testes automatizados",
    priority: 4,
    completed: true
  },
  {
    title: "Documentar API",
    description: "Escrever documentação das rotas e endpoints da aplicação",
    priority: 2,
    completed: false
  },
  {
    title: "Otimizar queries",
    description: "Identificar e resolver problemas de N+1 queries",
    priority: 4,
    completed: false
  },
  {
    title: "Deploy para produção",
    description: "Fazer deploy da aplicação no Heroku ou Render",
    priority: 5,
    completed: false
  }
]

tasks_data.each do |task_attrs|
  Task.create!(task_attrs)
end

puts "#{Task.count} tarefas criadas com sucesso!"