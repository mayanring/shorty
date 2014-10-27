class Link < ActiveRecord::Base
  validates :original, :code, presence: true
  validates :code, uniqueness: true
end
