class Product < ActiveRecord::Base
 validates_numericality_of :unit_price
end

