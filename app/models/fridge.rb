class Fridge < ApplicationRecord

    # belongs_to :user
    has_and_belongs_to_many :items
    has_and_belongs_to_many :users
    has_many :items, dependent: :destroy
    # has_one :info
    # has_and_belongs_to_many :options
end
