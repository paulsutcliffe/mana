require 'faker'

FactoryGirl.define do
  factory :producto do
    nombre { Faker::Name.name }
    precio_en_oferta 20.4
    precio_normal 30.4
    codigo { Faker::Number.number(4) }
    foto { Rack::Test::UploadedFile.new(File.join(Rails.root,'spec','support','images','foto.jpg'))}
    categoria
  end
end
