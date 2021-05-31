user = User.create(
    name: Faker::Name.name,
    email: Faker::Internet.safe_email,
    password_digest: '123456789'
    )
    article = Article.new(
    title: Faker::Lorem.sentence(word_count: 5),
    body: Faker::Lorem.paragraphs(number: 4),
    )
    article.user = user
    article.image.attach(
    io: File.open('app/dummy.jpg'),
    filename: 'dummy.jpg'
    )
    article.save!



