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
fry = User.create username: 'Fry', email: 'fry@futurama.com', password: '123456', password_confirmation: '123456'
article1 = fry.article.create title: 'This is the first main file', content: 'First article to populate the DB', image: File.new(Rails.root.join('public', 'test_image.png')), category_ids: '1'
article1 = fry.article.create title: 'This is the first main file', content: 'First article to populate the DB', image: File.new(Rails.root.join('public', 'test_image.png')), category_ids: '2'
article1 = fry.article.create title: 'This is the first main file', content: 'First article to populate the DB', image: File.new(Rails.root.join('public', 'test_image.png')), category_ids: '3'
article1 = fry.article.create title: 'This is the first main file', content: 'First article to populate the DB', image: File.new(Rails.root.join('public', 'test_image.png')), category_ids: '4'
article1 = fry.article.create title: 'This is the first main file', content: 'First article to populate the DB', image: File.new(Rails.root.join('public', 'test_image.png')), category_ids: '5'
article1 = fry.article.create title: 'This is the first main file', content: 'First article to populate the DB', image: File.new(Rails.root.join('public', 'test_image.png')), category_ids: '6'
article1 = fry.article.create title: 'This is the first main file', content: 'First article to populate the DB', image: File.new(Rails.root.join('public', 'test_image.png')), category_ids: '7'
article1 = fry.article.create title: 'This is the first main file', content: 'First article to populate the DB', image: File.new(Rails.root.join('public', 'test_image.png')), category_ids: '8'
article1 = fry.article.create title: 'This is the first main file', content: 'First article to populate the DB', image: File.new(Rails.root.join('public', 'test_image.png')), category_ids: '9'
article1 = fry.article.create title: 'This is the first main file', content: 'First article to populate the DB', image: File.new(Rails.root.join('public', 'test_image.png')), category_ids: '10'

