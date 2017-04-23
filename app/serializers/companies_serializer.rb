class CompaniesSerializer < ActiveModel::Serializer
  attributes :id, :name, :url, :about, :city, :state
end
