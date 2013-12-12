require 'net/http'
require 'json'

desc "Update the rate table. Usage: API_KEY=xxxx rake update_rates"
task :update_rates => :environment do |t|
  if ENV['API_KEY'].nil?
    puts "Please set API_KEY=xxxx for openexchangerates."
    exit
  end

  path = "/api/latest.json?app_id=#{ENV['API_KEY']}"
  domain = "openexchangerates.org"
  response = Net::HTTP.get_response domain, path
  parsed = JSON.parse response.body

  updated = 0

  parsed['rates'].each do |key,val|
    currency = Currency.find_or_create_by(country: key)
    currency.rate = val
    updated += 1 if currency.save
  end
  puts "Updated or created #{updated} exchange rates."
end