class User < ApplicationRecord
    has_many :inventories
    has_many :inventory_items, through: :inventories

    has_secure_password
end
