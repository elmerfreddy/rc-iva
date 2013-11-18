class FormSerializer < ActiveModel::Serializer
  self.root = false

  attributes :id, :nit, :invoice, :authorization, :date, :amount, :code
end
