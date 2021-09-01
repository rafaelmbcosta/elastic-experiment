class Round < ApplicationRecord
  belongs_to :dispute, optional: true
end
