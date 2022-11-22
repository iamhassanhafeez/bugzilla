# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

roles = [
    { name: "Manager"   },
    { name: "Developer"},
    { name: "QA"}

]

Role.bulk_insert(values: roles) if Role.all.count.zero?