class Tree < ApplicationRecord
    has_many :branches
    has_many :forests, through: :branches
end
