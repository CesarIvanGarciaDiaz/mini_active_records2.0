require_relative 'app'

def assert(truthy)
  raise "Tests failed" unless truthy
end

puts chef = Chef.find(1)

# Este es un ejemplo de test ya que los nombres de los chefs son aleatorios, este test muy probablemente fallará
assert chef[:first_name]== "Clemens"
assert chef[:last_name] == "Abernathy"

puts meal = Meal.find(2)
assert meal[:name]== "Chicken Sandwich"
assert meal[:chef_id] == 3

assert Chef.all
assert chef = Chef.create(first_name: "Juan",last_name: "Sotelo",email:"Juanito@gmail.com",phone:"930-028-2908 x7555",birthday:Time.now)
puts  Chef.where("first_name = ?", 'Juan')

puts "finished"
