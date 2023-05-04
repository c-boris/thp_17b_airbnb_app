class AddDogRefToStrolls < ActiveRecord::Migration[7.0]
  def change
    add_reference :strolls, :dog, null: false, foreign_key: true
  end
end
