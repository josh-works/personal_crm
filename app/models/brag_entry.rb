class BragEntry < ApplicationRecord
  validates_presence_of :author_id
  belongs_to :author
  validates_presence_of :description, on: :publish
end
