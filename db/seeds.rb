# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

seed_file = Rails.root.join('db', 'seeds.yml')
config = YAML::load_file(seed_file)
APP_CONFIG = HashWithIndifferentAccess.new(config)

APP_CONFIG[:todos].each do |proj|
  @project = Project.create!(title: proj[proj.keys[0]])
  proj[:todos].each do |todo|
    puts todo
    puts @project.title
    Todo.create!(text: todo[:text], isCompleted: todo[:isCompleted], project: @project);
  end
end

