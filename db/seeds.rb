30.times do
	user = User.new( email: Faker::Internet.free_email, name: Faker::Name.name)
	user.save
end