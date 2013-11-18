class CreateForms < ActiveRecord::Migration
  def change
    create_table :forms do |t|
      t.string :nit
      t.string :invoice
      t.string :authorization
      t.date :date
      t.integer :amount
      t.string :code

      t.timestamps
    end
  end
end
