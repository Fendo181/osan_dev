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

10.times do |n|
  name = %w(minne作家さん集まれ！ デザフェス出店する人～！ ハンドメイドピアスを作りたい人集まれ！ 〇〇さんの作品ファン アクセサリーの交換会をしたい！！ ゆめかわな作品好きさん ハンドメイド初心者のコミュニティー).sample
  category = %w(すべて アクセサリー ファッション 雑貨 素材).sample
  admin_allowed = [true,false].sample
  content = Faker::Lorem.sentence
  # user_id = "#{n+1}"
  picture =
  Community.create!(
                     name: name,
                     category: category,
                     content: content,
                     admin_allowed: admin_allowed,
                     user_id:1
                     )
end
