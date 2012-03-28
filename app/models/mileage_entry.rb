class MileageEntry < ActiveRecord::Base
  comma do
    litres
    tripMileage
    odometer
    cost
    mpg
  end
end
