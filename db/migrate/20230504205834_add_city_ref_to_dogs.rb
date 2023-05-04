class AddCityRefToDogs < ActiveRecord::Migration[7.0]
  def change
    add_reference :dogs, :city, null: false, foreign_key: true
  end
end
