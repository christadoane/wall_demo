# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


user = User.create(name: 'oscar', email: 'oscar@oscar.com', password: 'oscar')
user2 = User.create(name: 'marcos', email: 'marcos@oscar.com', password: 'oscar')
user3 = User.create(name: 'gustavo', email: 'gustavo@oscar.com', password: 'oscar')

post = Post.create(post: 'asldkfja asdlfk asldkf asldk faldsk fasldkf asldkf ', user: User.first)

comment = Comment.create(comment: 'alsdkjf alkdsf alsdkf this is a comment', user: User.first, post: Post.first)
comment = Comment.create(comment: 'alsdkjf alkdsf alsdkf this is a comment by marcos', user: User.second, post: Post.first)
comment = Comment.create(comment: 'alsdkjf alkdsf alsdkf this is a comment by gustavo', user: User.third, post: Post.first)