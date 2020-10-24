fry = User.create username: 'Fry', email: 'fry@futurama.com', password: '123456', password_confirmation: '123456'

Category.create name: 'North America', priority: 1
Category.create name: 'South America', priority: 2
Category.create name: 'Central America', priority: 3
Category.create name: 'Caribbean', priority: 4
Category.create name: 'Africa', priority: 5
Category.create name: 'Middle East', priority: 6
Category.create name: 'Europe', priority: 7
Category.create name: 'Asia', priority: 8
Category.create name: 'Australia & Oceania', priority: 9
Category.create name: 'Antarctica', priority: 10

article1 = fry.articles.create title: 'This is the first main file', content: 'First article to populate the DB', image: File.new(Rails.root.join('public', 'test_image.png')), category_ids: '1'

article2 = fry.articles.create title: 'This is the first main file', content: 'First article to populate the DB', image: File.new(Rails.root.join('public', 'test_image.png')), category_ids: '2'

article3 = fry.articles.create title: 'This is the first main file', content: 'First article to populate the DB', image: File.new(Rails.root.join('public', 'test_image.png')), category_ids: '3'

article4 = fry.articles.create title: 'This is the first main file', content: 'First article to populate the DB', image: File.new(Rails.root.join('public', 'test_image.png')), category_ids: '4'

article5 = fry.articles.create title: 'This is the first main file', content: 'First article to populate the DB', image: File.new(Rails.root.join('public', 'test_image.png')), category_ids: '5'

article6 = fry.articles.create title: 'This is the first main file', content: 'First article to populate the DB', image: File.new(Rails.root.join('public', 'test_image.png')), category_ids: '6'

article7 = fry.articles.create title: 'This is the first main file', content: 'First article to populate the DB', image: File.new(Rails.root.join('public', 'test_image.png')), category_ids: '7'

article8 = fry.articles.create title: 'This is the first main file', content: 'First article to populate the DB', image: File.new(Rails.root.join('public', 'test_image.png')), category_ids: '8'

article9 = fry.articles.create title: 'This is the first main file', content: 'First article to populate the DB', image: File.new(Rails.root.join('public', 'test_image.png')), category_ids: '9'

article10 = fry.articles.create title: 'This is the first main file', content: 'First article to populate the DB', image: File.new(Rails.root.join('public', 'test_image.png')), category_ids: '10'

vote1 = Vote.create id: 1, article_id: 1, user_id: 1