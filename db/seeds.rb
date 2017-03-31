# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Product.destroy_all

Product.create({
  name: "Product Name Here",
  description: "Add your description here... Say cheese fondue fromage frais. Halloumi cheese slices bavarian bergkase danish fontina cheese strings smelly cheese squirty cheese cauliflower cheese. Red leicester taleggio red leicester croque monsieur babybel chalk and cheese blue castello who moved my cheese. The big cheese cheesy grin danish fontina jarlsberg emmental who moved my cheese pecorino roquefort. Brie caerphilly rubber cheese babybel hard cheese say cheese cauliflower cheese cheese triangles.",
  min_price: 20,
  total_donated_amount: 0,
  inventory_amount: 10,
  avatar: ""
  })



