class CreateCars < ActiveRecord::Migration
  def change
    create_table :cars do |t|
      t.string :color
      t.string :year
      t.string :mileage
      t.string :description
    end
  end
end
