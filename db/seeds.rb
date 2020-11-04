# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(email: 'valcampbell@gmail.com')
User.create(email: 'violetc@yahoo.com')
User.create(email: 'johnsmith@gmail.com')
User.create(email: 'janedoe@yahoo.com')

ShortenedUrl.create_for_user_and_long_url(User.find_by_id(3), 'https://people.com/tv/jeannie-mai-throat-closed-up-waited-go-hospital-dwts/')
ShortenedUrl.create_for_user_and_long_url(User.find_by_id(2), 'https://sports.yahoo.com/49ers-reported-covid19-positive-test-day-before-packers-game-thursday-night-161922613.html?guccounter=1&guce_referrer=aHR0cHM6Ly93d3cuZ29vZ2xlLmNvbS8&guce_referrer_sig=AQAAAKL51HZqWwPLk3m4HqU0cGJ7xZTsvkDwSAoawGKKYWZMWr5tNgV7HmxYiwKfGzMZgaitBk8OWLGNmlb5WBKYjfYB6gKmGf7KK0Vjjz5-MXuvIbRbQQImnjhk7fCrQTw6B13J7f6IZilo_ue8r5bj_2MBk6SD7l1DBlohWffB1b9v')
ShortenedUrl.create_for_user_and_long_url(User.find_by_id(4), 'https://www.cnn.com/politics/live-news/election-results-and-news-11-04-20/index.html')
ShortenedUrl.create_for_user_and_long_url(User.find_by_id(1), 'https://www.youtube.com/watch?v=GKj5WNm5oDE&list=OLAK5uy_nbYT-zIG1l1e-H0ABH8xnsQE2RgRxzn9E&index=2')
ShortenedUrl.create_for_user_and_long_url(User.find_by_id(1), 'https://jambands.com/news/2020/09/01/rebelutions-eric-rachmany-schedules-relix-remote-session/')

TagTopic.create(topic: 'news')
TagTopic.create(topic: 'sports')
TagTopic.create(topic: 'music')
TagTopic.create(topic: 'pop culture')

Tagging.create(tag_topic_id: 1, shortened_url_id: 1)
Tagging.create(tag_topic_id: 1, shortened_url_id: 2)
Tagging.create(tag_topic_id: 1, shortened_url_id: 3)
Tagging.create(tag_topic_id: 1, shortened_url_id: 5)
Tagging.create(tag_topic_id: 2, shortened_url_id: 2)
Tagging.create(tag_topic_id: 3, shortened_url_id: 4)
Tagging.create(tag_topic_id: 3, shortened_url_id: 5)
Tagging.create(tag_topic_id: 4, shortened_url_id: 1)

Visit.record_visit!(2, 2)
Visit.record_visit!(2, 3)
Visit.record_visit!(1, 4)
Visit.record_visit!(1, 4)
Visit.record_visit!(1, 4)
Visit.record_visit!(1, 4)
Visit.record_visit!(3, 1)
Visit.record_visit!(3, 4)
Visit.record_visit!(4, 4)
Visit.record_visit!(4, 1)
Visit.record_visit!(2, 5)