10.times do
    Article.create({
        title: Faker::Book.title,
        body: Faker::Lorem.sentence
        image:
    })
end

article =  Article.new(
    title: Faker::Book.title,
    body: Faker::Lorem.sentence
)
article.user = user,
article.image.attach(
io: File.open('app/dummy.jpg'),
filename: 'dummy.jpg'  
)
# create 10 articles in DB
(1..10).each do |id|
    Article.create!(
        id: id,
        user_id: rand(1..10), # we have userIds between 1 and 20. Assign a article to a user randomly
        title: Faker::Book.title,
        body: Faker::Lorem.sentence
    )
end
user_id: rand(1..10)