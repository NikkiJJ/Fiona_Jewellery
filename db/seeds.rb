user = User.find_or_create_by!(email: 'admin@admin.com') do |u|
  u.password = 'password123'
  u.password_confirmation = 'password123'
end

JewelleryItem.delete_all


JewelleryItem.create!(
  name: "Elegant Gold Bracelet",
  description: "A stunning gold bracelet perfect for any occasion.",
  price: 150.00,
  jewellery_type: "Bracelet",
  user_id: 1
)

JewelleryItem.create!(
  name: "Diamond Engagement Ring",
  description: "A beautiful diamond ring to make your special moments unforgettable.",
  price: 3000.00,
  jewellery_type: "Ring",
  user_id: 1
)


JewelleryItem.create!(
  name: "Silver Pearl Necklace",
  description: "Elegant pearl necklace with a string of fine pearls and a silver chain.",
  price: 200.00,
  jewellery_type: "Necklace",
  user_id: 1
)

puts "Jewellery items seeded!"
