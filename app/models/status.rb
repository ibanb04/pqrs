class Status < ApplicationRecord
    enum status_description: [ :no_revisado, :en_espera, :finalizado, :vencido ]
    has_many :pqr_trackings
end
