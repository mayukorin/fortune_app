class Fortune < ApplicationRecord
    belongs_to :sign
    belongs_to :fortune_site
    validates :day, presence: true
    validates :rank, presence: true, numericality: { greater_than: 0, less_than: 13 }
    validates :sign_id, presence: true, uniqueness: { scope: [:fortune_site_id, :day] }
    validates :fortune_site_id, presence: true
end
