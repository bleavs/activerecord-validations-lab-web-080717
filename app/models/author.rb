class Author < ActiveRecord::Base
  #validating presence of the author's name
  validates :name, presence: true
  #making sure no authors have the same name
  validates :name, uniqueness: true

  #validating that phone num is 10 digits exactly
  validates :phone_number, length: { is: 10 }
  
end
