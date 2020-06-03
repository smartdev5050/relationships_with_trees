class Branch < ApplicationRecord
  belongs_to :tree
  belongs_to :forest
end
