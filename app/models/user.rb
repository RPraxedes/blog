class User < ApplicationRecord
  has_many :todos
  # << push to set and commit
end
