class Company < ApplicationRecord
  has_many :contacts
  
  def self.import(list)
    list.each do |company|
      new_company = Company.find_or_create_by(name: company[:name], url: company[:url])
      
      new_company.save
    end
  end

  def self.trunc_reset
    Company.destroy_all
    ActiveRecord::Base.connection.execute("DELETE from sqlite_sequence where name = 'companies'")
  end
end
