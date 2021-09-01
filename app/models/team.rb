class Team < ApplicationRecord
  belongs_to :score, optional: true
end
