# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
["Gibralfaro", "Montes Victora", "Montes Tortuga", "San Anton", "El Morlaco", "Fluff"].each do |name|
  Mountain.find_or_create_by!(name: name)
end

# [
#   3. "Gibralfaro", 
#   10. "Montes Victora", 
#   5. "Montes Tortuga", 
#   20. "San Anton", 
#   10. "El Morlaco", 
#   2. "La Pelusa"]