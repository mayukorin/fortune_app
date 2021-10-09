class Fortune < ApplicationRecord
    belongs_to :sign
    belongs_to :fortune_site
end
