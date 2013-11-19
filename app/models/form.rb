class Form < ActiveRecord::Base
  default_scope -> { order(:created_at) }
end
