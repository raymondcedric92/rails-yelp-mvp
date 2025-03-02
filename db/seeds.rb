# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
# db/seeds.rb

Restaurant.create(name: "Le Bistrot", address: "123 Rue de Paris, Paris", category: "french")
Restaurant.create(name: "La Pizzeria", address: "456 Avenue des Champs, Paris", category: "italian")
Restaurant.create(name: "Sushi World", address: "789 Rue du Faubourg, Paris", category: "japanese")
Restaurant.create(name: "Taco Time", address: "321 Boulevard Saint-Germain, Paris", category: "mexican")
Restaurant.create(name: "Café Bonjour", address: "101 Rue de Rivoli, Paris", category: "french")