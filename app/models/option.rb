class Option < ApplicationRecord
    has_and_belongs_to_many :fridges
    has_many :items
end
