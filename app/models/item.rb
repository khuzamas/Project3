class Item < ApplicationRecord
    belongs_to :fridge
    has_and_belongs_to_many :options 
end
