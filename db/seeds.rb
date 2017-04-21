DATA_companies = {
  :company_keys =>
    ["name", "city", "state", "url", "about"],
  :companies => [
    ["Network", "hometown", "homestate", "me.com", "about me"],
    ["Acme", "Albany", "NY", "http://www.acme.com", "Coyote is after you."],
    ["Sears", "Clifton", "NJ", "http://www.sears.com", "Everyting for the home."],
    ["Walmart", "Bentonville", "AK", "http://www.walmart.com", "Always the low price."],
    ["Ace Hardware", "Tulsa", "OK", "http://www.acehardware.com", "Ace is the place for the helpful hardware mammal."],
    ["JB Hunt", "Chicago", "IL", "http://www.jbhunt.com", "Ship it!"],
    ["Pepsi Co", "Louisville", "KY", "http://www.pepsico.com", "You want Pepsi, not Coke"],
    ["deleted"]
  ]
}

def make_companies
  DATA_companies[:companies].each do |company|
    new_company = Company.new
    company.each_with_index do |attribute, i|
      new_company.send(DATA_companies[:company_keys][i]+"=", attribute)
    end
    new_company.save
  end
end

DATA_contacts ={
 :contact_keys =>
    ["company_id", "username", "email", "password"],
  :contacts => [
    ["1", "ned", "ned@abc.com", "pointer"],
    ["2", "max", "max@abc.com", "pointer"],
    ["3", "skai", "skai@abc.com", "pointer"],
    ["4", "kaleo", "kaleo@abc.com", "pointer"],
    ["5", "megan", "megan@abc.com", "pointer"],
    ["6", "tenzing", "tenzing@abc.com", "pointer"],
    ["6", "davis", "davis@abc.com", "pointer"],
    ["7", "cole", "cole@abc.com", "pointer"],
    ["8", "ted", "ted@abc.com", "pointer"],
    ["1", "fred", "fred@abc.com", "pointer"]
  ]
}

def make_contacts
  DATA_contacts[:contacts].each do |contact|
    new_contact = Contact.new
    contact.each_with_index do |attribute, i|
      new_contact.send(DATA_contacts[:contact_keys][i]+"=", attribute)
    end
    new_contact.save
  end
end
 
def main
  make_companies
  make_contacts 
end

main
