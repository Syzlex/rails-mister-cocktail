class Ingredient < ApplicationRecord
  has_many :doses
  # before_destroy :has_doses, prepend: true
  validates :name, presence: true, uniqueness: true

  # private
  #   def has_doses
  #     if
  #   end
end
