# This is a Rails app and we want to load all the files in the app 
# when running this code.  To do so, your current working directory
# should be the top-level directory (i.e. /workspace/your-app/) and then run:
# rails runner code-along/3-associations.rb

# **************************
# DON'T CHANGE OR MOVE
Contact.destroy_all
# **************************

# - Insert and read contact data for companies in the database

apple = Company.find_by({"name" => "Apple"})
p apple

# 1. insert new rows in the contacts table with relationship to a company
contact = Contact.new
contact ["first_name"] = "Ana"
contact ["last_name"] = "Araujo"
contact ["company_id"] = apple["id"]
contact.save

puts "Contacts: #{Contact.all.count}"

# 2. How many contacts work at Apple?

# 3. What is the full name of each contact who works at Apple?
