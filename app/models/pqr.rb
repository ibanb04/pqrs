class Pqr < ApplicationRecord
  belongs_to :file
  has_and_belongs_to_many :pqr_trackings
end
