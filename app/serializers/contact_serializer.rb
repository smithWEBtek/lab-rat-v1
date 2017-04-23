class ContactSerializer < ActiveModel::Serializer
  attributes :id, :username, :email, :image
  belongs_to :company, serializer: ContactCompanySerializer
end
