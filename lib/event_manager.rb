# puts "EventManager Initialized!"
######################

# contents = File.read "event_attendees.csv"
# # puts contents
#####################

# if File.exist?("event_attendees.csv")
# puts "exists"
# end
#####################

# lines = File.readlines "event_attendees.csv"
# lines.each do |line|
#   puts line
#   require 'pry'; binding.pry
# end
#####################

# lines = File.readlines "event_attendees.csv"
# lines.each do |line|
#   columns = line.split(",")
#   p columns
# end
#####################

# lines = File.readlines "event_attendees.csv"
# lines.each do |line|
#   columns = line.split(",")
#   name = columns[2]
#   puts name
# end
#####################

# lines = File.readlines "event_attendees.csv"
# lines.each do |line|
#   next if line == " ,RegDate,first_Name,last_Name,Email_Address,HomePhone,Street,City,State,Zipcode\n"
#   columns = line.split(",")
#   name = columns[2]
#   puts name
# end
#####################

# lines = File.readlines "event_attendees.csv"
# row_index = 0
# lines.each do |line|
#   row_index = row_index + 1
#   next if row_index == 1
#   columns = line.split(",")
#   name = columns[2]
#   puts name
# end
#####################

# lines = File.readlines "event_attendees.csv"
# lines.each_with_index do |line,index|
#   next if index == 0
#   columns = line.split(",")
#   name = columns[2]
#   puts name
# end
#####################

# require "csv"
# puts "EventManager initialized."

# contents = CSV.open "event_attendees.csv", headers: true
# contents.each do |row|
#   name = row[2]
#   puts name
# end
#####################

# require "csv"
# puts "EventManager initialized."

# contents = CSV.open "event_attendees.csv", headers: true, header_converters: :symbol
# contents.each do |row|
#   name = row[:first_name]
#   puts name
# end
#####################

# require "csv"
# puts "EventManager initialized."

# contents = CSV.open "event_attendees.csv", headers: true, header_converters: :symbol
# contents.each do |row|
#   name = row[:first_name]
#   zipcode = row[:zipcode]
#   puts "#{name} #{zipcode}"
# end
#####################

# require "csv"
# puts "EventManager initialized."

# contents = CSV.open "event_attendees.csv", headers: true, header_converters: :symbol
# contents.each do |row|
#   name = row[:first_name]
#   zipcode = row[:zipcode]

#   # if the zip code is exactly five digits, assume that it is ok
#   # if the zip code is more than 5 digits, truncate it to the first 5 digits
#   # if the zip code is less than 5 digits, add zeros to the front until it becomes five digits

#   puts "#{name} #{zipcode}"
#  end
#####################

# require 'csv'

# puts "EventManager initialized."

# contents = CSV.open 'event_attendees.csv', headers: true, header_converters: :symbol

# contents.each do |row|
#   name = row[:first_name]
#   zipcode = row[:zipcode]

#   if zipcode.length < 5
#     zipcode = zipcode.rjust 5, "0"
#   elsif zipcode.length > 5
#     zipcode = zipcode[0..4]
#   end

#   puts "#{name} #{zipcode}"
# end
#####################

# require 'csv'

# puts "EventManager initialized."

# contents = CSV.open 'event_attendees.csv', headers: true, header_converters: :symbol

# contents.each do |row|
#   name = row[:first_name]
#   zipcode = row[:zipcode]

#   if zipcode.nil?
#     zipcode = "00000"
#   elsif zipcode.length < 5
#     zipcode = zipcode.rjust 5, "0"
#   elsif zipcode.length > 5
#     zipcode = zipcode[0..4]
#   end

#   puts "#{name} #{zipcode}"
# end
#####################

# require 'csv'

# def clean_zipcode(zipcode)
#   if zipcode.nil?
#     "00000"
#   elsif zipcode.length < 5
#     zipcode.rjust(5,"0")
#   elsif zipcode.length > 5
#     zipcode[0..4]
#   else
#     zipcode
#   end
# end
####################

# puts "EventManager initialized."

# contents = CSV.open 'event_attendees.csv', headers: true, header_converters: :symbol

# contents.each do |row|
#   name = row[:first_name]

#   zipcode = clean_zipcode(row[:zipcode])

#   puts "#{name} #{zipcode}"
# end
##########################

# require 'csv'
# require 'sunlight/congress'

# # Sunlight::Congress.api_key = AIzaSyCz9OwsAZWGB-DkEfUEqGCJS8tOnNr5Fac

# Sunlight::Congress.api_key = "e179a6973728c4dd3fb1204283aaccb5"

# def clean_zipcode(zipcode)
#   zipcode.to_s.rjust(5,"0")[0..4]
# end

# puts "EventManager initialized."

# contents = CSV.open 'event_attendees.csv', headers: true, header_converters: :symbol

# contents.each do |row|
#   name = row[:first_name]

#   zipcode = clean_zipcode(row[:zipcode])

#   legislators = Sunlight::Congress::Legislator.by_zipcode(zipcode)

#   puts "#{name} #{zipcode} #{legislators}"
# end
#####################

# require 'csv'
# require 'sunlight/congress'

# Sunlight::Congress.api_key = "e179a6973728c4dd3fb1204283aaccb5"

# def clean_zipcode(zipcode)
#   zipcode.to_s.rjust(5,"0")[0..4]
# end

# puts "EventManager initialized."
# contents = CSV.open 'event_attendees.csv', headers: true, header_converters: :symbol 

# contents.each do |row|
#   name = row[:first_name]

#   zipcode = clean_zipcode(row[:zipcode])

#   legislators = Sunlight::Congress::Legislator.by_zipcode(zipcode)

#   legislator_names = legislators.collect do |legislator|
#     "#{legislator.first_name} #{legislator.last_name}"
#   end

#   legislators_string = legislator_names.join(", ")

#   puts "#{name} #{zipcode} #{legislators_string}"
# end

###########################

# require 'csv'
# require 'sunlight/congress'

# Sunlight::Congress.api_key = "e179a6973728c4dd3fb1204283aaccb5"

# def clean_zipcode(zipcode)
#   zipcode.to_s.rjust(5,"0")[0..4]
# end

# def legislators_by_zipcode(zipcode)
#   legislators = Sunlight::Congress::Legislator.by_zipcode(zipcode)

#   legislator_names = legislators.collect do |legislator|
#     "#{legislator.first_name} #{legislator.last_name}"
#   end

#   legislator_names.join(", ")
# end

# puts "EventManager initialized."

# contents = CSV.open 'event_attendees.csv', headers: true, header_converters: :symbol

# contents.each do |row|
#   name = row[:first_name]

#   zipcode = clean_zipcode(row[:zipcode])

#   legislators = legislators_by_zipcode(zipcode)

#   puts "#{name} #{zipcode} #{legislators}"
# end
###########################

# form_letter = %{
#   <html>
#   <head>
#     <title>Thank You!</title>
#   </head>
#   <body>
#     <h1>Thanks FIRST_NAME!</h1>
#     <p>Thanks for coming to our conference.  We couldn't have done it without you!</p>

#     <p>
#       Political activism is at the heart of any democracy and your voice needs to be heard.
#       Please consider reaching out to your following representatives:
#     </p>

#     <table>
#       <tr><th>Legislators</th></tr>
#       <tr><td>LEGISLATORS</td></tr>
#     </table>
#   </body>
#   </html>
# }
# p form_letter
##############################

# template_letter = File.read "form_letter.html"
##############################

# require 'csv'
# require 'sunlight/congress'

# Sunlight::Congress.api_key = "e179a6973728c4dd3fb1204283aaccb5"

# def clean_zipcode(zipcode)
#   zipcode.to_s.rjust(5,"0")[0..4]
# end

# def legislators_by_zipcode(zipcode)
#   legislators = Sunlight::Congress::Legislator.by_zipcode(zipcode)

#   legislator_names = legislators.collect do |legislator|
#     "#{legislator.first_name} #{legislator.last_name}"
#   end

#   legislator_names.join(", ")
# end

# puts "EventManager initialized."
# template_letter = File.read "form_letter.html"
# contents = CSV.open 'event_attendees.csv', headers: true, header_converters: :symbol

# contents.each do |row|
#   name = row[:first_name]

#   zipcode = clean_zipcode(row[:zipcode])

#   legislators = legislators_by_zipcode(zipcode)
# personal_letter = template_letter.gsub('FIRST_NAME',name)
#   personal_letter.gsub!('LEGISLATORS',legislators)

# puts personal_letter
# end
#############################

# require 'csv'
# require 'sunlight/congress'
# require 'erb'

# Sunlight::Congress.api_key = "e179a6973728c4dd3fb1204283aaccb5"

# def clean_zipcode(zipcode)
#   zipcode.to_s.rjust(5,"0")[0..4]
# end

# def legislators_by_zipcode(zipcode)
#   Sunlight::Congress::Legislator.by_zipcode(zipcode)
# end

# puts "EventManager initialized."

# contents = CSV.open 'event_attendees.csv', headers: true, header_converters: :symbol

# template_letter = File.read "form_letter.erb"
# erb_template = ERB.new template_letter

# contents.each do |row|
#   name = row[:first_name]

#   zipcode = clean_zipcode(row[:zipcode])

#   legislators = legislators_by_zipcode(zipcode)

#   form_letter = erb_template.result(binding)
#   puts form_letter
# end
############################
require 'csv'
require 'sunlight/congress'
require 'erb'

Sunlight::Congress.api_key = "e179a6973728c4dd3fb1204283aaccb5"

def clean_zipcode(zipcode)
  zipcode.to_s.rjust(5,"0")[0..4]
end

def legislators_by_zipcode(zipcode)
  Sunlight::Congress::Legislator.by_zipcode(zipcode)
end

def save_thank_you_letters(id,form_letter)
  Dir.mkdir("output") unless Dir.exists?("output")

  filename = "output/thanks_#{id}.html"

  File.open(filename,'w') do |file|
    file.puts form_letter
  end
end

puts "EventManager initialized."

contents = CSV.open 'event_attendees.csv', headers: true, header_converters: :symbol

template_letter = File.read "form_letter.erb"
erb_template = ERB.new template_letter

contents.each do |row|
  id = row[0]
  name = row[:first_name]
  zipcode = clean_zipcode(row[:zipcode])
  legislators = legislators_by_zipcode(zipcode)

  form_letter = erb_template.result(binding)

  save_thank_you_letters(id,form_letter)
end