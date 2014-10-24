require 'faker'
require_relative '../app/models/url'

25.times do
  Url.create(url: Faker::Internet.url)
end