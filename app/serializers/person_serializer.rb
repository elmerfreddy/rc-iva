class PersonSerializer < ActiveModel::Serializer
  attributes :id, :name, :last_name, :age
end
