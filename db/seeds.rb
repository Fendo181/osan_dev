# test user
User.create!(name:  "Example User",
             email: "example@railstutorial.org",
             password:              "foobar",
             password_confirmation: "foobar",
             )

Profile.create!(user_id: User.find(1).id)



# Endu
User.create!(name:  "Endu Futoshi",
            email: "endu1201@email.com",
            password:              "endu1201",
            password_confirmation: "endu1201",
            )
Profile.create!(user_id: User.find(2).id)



# many samle user
# 99.times do |n|
#   name  = Faker::Name.name
#   email = "example-#{n+1}@railstutorial.org"
#   password = "password"
#   User.create!(name:  name,
#                email: email,
#                password:              password,
#                password_confirmation: password)
# end
