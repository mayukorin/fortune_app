class Sign < ApplicationRecord
    has_many :way_to_call_signs
    has_many :fortunes
end
