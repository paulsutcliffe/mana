require 'factory_girl'
require 'database_cleaner'

DatabaseCleaner.strategy = :truncation

DatabaseCleaner.clean

FactoryGirl.create :admin

8.times do
  FactoryGirl.create :contacto
end

8.times do
  FactoryGirl.create :producto
end

2.times do
  FactoryGirl.create :slide
end
