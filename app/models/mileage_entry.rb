class MileageEntry < ActiveRecord::Base
  comma do
    litres
    tripMilage
    odometer
    cost
    mpg
  end
end
