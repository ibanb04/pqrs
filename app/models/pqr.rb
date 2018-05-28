class Pqr < ApplicationRecord
  belongs_to :doc,optional: true
  has_and_belongs_to_many :pqr_trackings
end
