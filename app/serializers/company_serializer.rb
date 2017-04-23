class CompanySerializer < ActiveModel::Serializer
  attributes :id, :name, :city, :state, :url
end
