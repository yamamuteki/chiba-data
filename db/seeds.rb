# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'csv'

ActiveRecord::Base.transaction do
  Shisetsu.delete_all
  CSV.foreach('db/data/shisetsu.csv', encoding: 'Shift_JIS', headers: true) do |row|
    Shisetsu.create(
      title: row[0],
      category: row[1],
      yomi: row[2],
      postal_code: row[3],
      address: row[4],
      building: row[5],
      floor: row[6],
      latitude: row[7],
      longitude: row[8]
    )
    print '.'
  end
  puts
end
