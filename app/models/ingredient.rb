class Ingredient < ActiveRecord::Base
has_many :doses
# has_many :cocktails, through: :doses, dependent: :restrict_with_exception

validates :name, uniqueness: true, presence: true
end
