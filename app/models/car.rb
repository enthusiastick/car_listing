class Car < ActiveRecord::Base
  validates_presence_of :color, :year, :mileage
end
