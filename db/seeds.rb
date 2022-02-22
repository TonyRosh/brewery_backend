Beer.destroy_all
Food.destroy_all

Food.create(dish: 'The Trio', description: 'Snacks')
Food.create(dish: 'Pretzel Bites and Beer Cheese Queso', description: 'Snacks')
Food.create(dish: 'Cheese Board', description: 'Snacks')
Food.create(dish: 'Flatbread and Hummus', description: 'Snacks')
Food.create(dish: 'White Cheddar Mac n Cheese', description: 'Snacks')
Food.create(dish: 'Nachos', description: 'Snacks')
Food.create(dish: 'Soupe of the day', description: 'Snacks')
Food.create(dish: 'Cheese', description: 'Pizza')
Food.create(dish: 'Pepperoni', description: 'Pizza')
Food.create(dish: 'Sausage and Pepperoni', description: 'Pizza')
Food.create(dish: 'Deluxe', description: 'Pizza')
Food.create(dish: 'BBQ Chicken', description: 'Dillas')
Food.create(dish: 'Buffalo Chicken', description: 'Dillas')
Food.create(dish: 'Carnitas', description: 'Dillas')
Food.create(dish: 'Chicekn Fajitas', description: 'Dillas')
Food.create(dish: 'BBQ Pulled Pork', description: 'Sandwiches')
Food.create(dish: 'Meatball Grinder', description: 'Sandwiches')
Food.create(dish: 'Black Bean w/ Tzatziki', description: 'Sandwiches')

Beer.create(name: 'Bobcat Lager', style: 'Lager', alcohol: '4.9%', ibu: 17, description: Faker::Lorem.paragraphs)
Beer.create(name: 'Black Bear', style: 'Milk Stout', alcohol: '7%', ibu: 19, description: Faker::Lorem.paragraphs)
Beer.create(name: 'Black Fox', style: 'Oatmeal Stout', alcohol: '4.6%', ibu: 27, description: Faker::Lorem.paragraphs)
Beer.create(name: 'Red Fox', style: 'Irish Red Ale', alcohol: '5.3%', ibu: 20, description: Faker::Lorem.paragraphs)
Beer.create(name: 'Nuthatch Brown', style: 'English Brown Ale', alcohol: '6.5%', ibu: 26, description: Faker::Lorem.paragraphs)
Beer.create(name: 'Eagle Light', style: 'Light Lager', alcohol: '3.2%', ibu: 11, description: Faker::Lorem.paragraphs)
Beer.create(name: 'Rattlesnake', style: 'IPA', alcohol: '6.5%', ibu: 40, description: Faker::Lorem.paragraphs)
Beer.create(name: 'Blonde Bear', style: 'Blonde Ale', alcohol: '6.2%', ibu: 18, description: Faker::Lorem.paragraphs)