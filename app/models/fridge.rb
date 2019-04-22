class Fridge < ApplicationRecord

    # belongs_to :user
    has_many :items
    # has_one :info
    # has_and_belongs_to_many :options
end
