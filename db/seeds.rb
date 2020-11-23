# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Drug.destroy_all
Profile.destroy_all
Treatment.destroy_all
Device.destroy_all
Cap.destroy_all
Account.destroy_all
User.destroy_all

10.times { |index| Treatment.create! regimen: "tx#{index}", frequency: "#{index} times every other week" }
20.times { |index| Drug.create! generic_name: "generic#{index}", brand_name: "brand#{index}", dosage: "25#{index} mg/ml" }
25.times { |index| Device.create! serial_number: "000#{index}" }
50.times { |index| User.create! username: "User#{index}", password: "pwdxx#{index}"}

Treatment.all.each do |tx|
	tx.drugs << Drug.all.sample
	tx.save!
end

dx = ["breast cancer", "ovarian cancer", "lung cancer"]
stage = [1,2,3,4]
race = ["Black", "White", "Brown"]
ethnicity = [ "Hispanic", "Native-American", "Asian" ]
clinic = [ "St.Marys", "Mayo", "Fairview", "TriHealth" ]
address = ["Rochester, MN", "Minneapolis, MN", "Cincinatti, OH", "San Francisco, CA"]
first_name = ["Bella", "Audrey","Lucy","Addison", "Lisa", "Rahma", "Viki", "Jane", "Susan", "Beth","Willow","Aubrey","Leah","Kate", "Linda","Peg","Sheila","Deb","Bridget","Edith","Meg","Megan","Alexus","Alexia","Preema","Laura","Alice","Grace","Maggie" ]
last_name = ["Smith","Zumby","Tierney","Bieging","Luetm","Schmidt","Tric","Johnson","Olson","Pears", "Brown","Clark","Gyra","Gisvol","James","Greens","Williams","Teslat","O'Brien","Leet-Otley","Vernon","Xenia","Chyrsler","Schroeder-Olson"]
state = ["MN","WI","ND","NY","CT","GA","AL","IA","FL"]
city = ["Rochester","Minneapolis","Atlanta","NYC","Brainard","Grand Forks","Chatano", "Houston"]
street = ["Oak","Pine","Maple","Grove","Redwood","Fergus","Frasier","Oilword","Elder","Buckthorn","Cactus","Fern","Orange","Connen","Histan","Birch","Hickory"]
payment_status = ["no charges", "payment made", "paid in full", "invoiced"]

x=10
User.all.each do |user|
	x = x+1
	user.create_cap! serial_number: "cap00#{x}", circumference: rand(0..1), ear_ear_top: rand(0..1), ear_ear_base: rand(0..1), nose_nape: rand(0..1)
	user.create_profile! age: rand(18..74), gender: "F", race: race.sample, ethnicity: ethnicity.sample, clinic_name: clinic.sample , clinic_address: address.sample, dx: dx.sample, stage: stage.sample 
	user.create_account! first_name: first_name.sample, last_name: last_name.sample, street_address: "#{rand(300..1400)} #{street.sample}", state: state.sample, city: city.sample, zip_code: rand(10000..99999), payment_status: payment_status.sample
	user.treatments << Treatment.all.sample
	user.save!
end

Cap.all.each do |cap|
	device = Device.all.sample
	cap.data.create! temp1: rand(25.0..32.0).round(2), temp2: rand(25.0..32.0).round(2),temp3: rand(25.0..32.0).round(2), rail_power:  rand(0.0..14.0).round(2), battery_power: rand(0.0..14.0).round(2), flow_rate: rand(0.0..1.2).round(2), device_id: device.id, tx_time: Time.at(rand *Time.now.to_i)
	cap.data.create! temp1: rand(25.0..32.0).round(2), temp2: rand(25.0..32.0).round(2),temp3: rand(25.0..32.0).round(2), rail_power:  rand(0.0..14.0).round(2), battery_power: rand(0.0..14.0).round(2), flow_rate: rand(0.0..1.2).round(2), device_id: device.id, tx_time: Time.at(rand *Time.now.to_i)
	cap.data.create! temp1: rand(25.0..32.0).round(2), temp2: rand(25.0..32.0).round(2),temp3: rand(25.0..32.0).round(2), rail_power:  rand(0.0..14.0).round(2), battery_power: rand(0.0..14.0).round(2), flow_rate: rand(0.0..1.2).round(2), device_id: device.id, tx_time: Time.at(rand *Time.now.to_i)
	cap.data.create! temp1: rand(25.0..32.0).round(2), temp2: rand(25.0..32.0).round(2),temp3: rand(25.0..32.0).round(2), rail_power:  rand(0.0..14.0).round(2), battery_power: rand(0.0..14.0).round(2), flow_rate: rand(0.0..1.2).round(2), device_id: device.id, tx_time: Time.at(rand *Time.now.to_i)
end


