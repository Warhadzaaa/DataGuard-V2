class Employee < ApplicationRecord
  belongs_to :table
  UNIT = ["TV production", "Movie production", "Audio-book publishing", "Radio", "Events"]
end
