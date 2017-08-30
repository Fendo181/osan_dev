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



# many samle Community
20.times do |n|
  name  = Faker::Name.name
  email = "example-#{n+1}@railstutorial.org"
  password = "password"
  Community.create!(
                     name:  name,
                     content: content,
                     category:category,
                     admin_allowed: password,
                     user_id:user_id
                     )
end
