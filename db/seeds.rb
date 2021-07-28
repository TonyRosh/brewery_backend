Beer.destroy_all
Food.destroy_all

8.times do
    Food.create(dish: Faker::Food.dish, description: Faker::Food.description)
end

Beer.create(name: 'Bobcat Lager', style: 'Lager', alcohol: '4.9%', ibu: 17, description: Faker::Lorem.paragraphs)
Beer.create(name: 'Black Bear', style: 'Milk Stout', alcohol: '7%', ibu: 19, description: Faker::Lorem.paragraphs)
Beer.create(name: 'Black Fox', style: 'Oatmeal Stout', alcohol: '4.6%', ibu: 27, description: Faker::Lorem.paragraphs)
Beer.create(name: 'Red Fox', style: 'Irish Red Ale', alcohol: '5.3%', ibu: 20, description: Faker::Lorem.paragraphs)
Beer.create(name: 'Nuthatch Brown', style: 'English Brown Ale', alcohol: '6.5%', ibu: 26, description: Faker::Lorem.paragraphs)
Beer.create(name: 'Eagle Light', style: 'Light Lager', alcohol: '3.2%', ibu: 11, description: Faker::Lorem.paragraphs)
Beer.create(name: 'Rattlesnake', style: 'IPA', alcohol: '6.5%', ibu: 40, description: Faker::Lorem.paragraphs)
Beer.create(name: 'Blonde Bear', style: 'Blonde Ale', alcohol: '6.2%', ibu: 18, description: Faker::Lorem.paragraphs)