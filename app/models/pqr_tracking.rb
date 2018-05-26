class PqrTracking < ApplicationRecord
  belongs_to :pqr
  belongs_to :user
  belongs_to :status
  belongs_to :department
end
