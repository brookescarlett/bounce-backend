class Scene < ApplicationRecord
  has_many :balls
  has_many :blocks
end
