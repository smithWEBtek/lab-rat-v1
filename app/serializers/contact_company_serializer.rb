class ContactCompanySerializer < ActiveModel::Serializer
  attributes :name
  has_many :contacts
end
