class Ball < ApplicationRecord
  belongs_to :scene
  has_one :sound
end
