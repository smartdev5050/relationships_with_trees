# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Branch.destroy_all
Tree.destroy_all
Forest.destroy_all

birch = Tree.create({ name: "Birch", height: 30 })
redwood = Tree.create({ name: "Redwood", height: 100 })
maple = Tree.create({ name: "Maple", height: 4000 })

amazon = Forest.create({ name: "Amazon", age: 5000 })
redwoods_forest = Forest.create({ name: "Redwoods", age: 2000 })

Branch.create({ length: 5, tree: birch, forest: amazon })
Branch.create({ length: 8, tree: birch, forest: amazon })
Branch.create({ length: 10, tree: birch, forest: amazon })

Branch.create({ length: 20, tree_id: redwood.id, forest: redwoods_forest })
Branch.create({ length: 40, tree_id: redwood.id, forest: redwoods_forest })