class Department < ApplicationRecord
    has_one :pqr_trackings
    has_many :users
end
