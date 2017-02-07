class Car < ApplicationRecord
 
  # Callbacks
  # Associations
  
  # Class methods - Scope - has self in front
   def self.makes
    ['Jeep', 'Toyota', 'Ford', 'Chevy']
   end
  
  # Validations
  # Second line of defense
  validates_presence_of :make, :model, :year, :color
  validates_inclusion_of :make, in: makes

   # Instance methods
   def info
     "Car with make #{make}, #{model}, was made in #{year} and is #{color}"
   end

   def make_model
     "#{make} #{model}"
    end

   


   
   def self.by_year
    #  DEFAULT - ASC
    #  order(:year)

    #  DESC
     order(year: :desc)
    end
end
