class FormSerializer < ActiveModel::Serializer
  attributes :id, :nit, :invoice, :authorization, :date, :amount, :code
end
