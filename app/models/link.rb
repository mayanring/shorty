class Link < ActiveRecord::Base
  validates :original, presence: true
  validates :code, uniqueness: true, allow_blank: true

  after_save :set_code

  def set_code
    self.code = generate
  end

  def generate
    hashids = Hashids.new(Rails.application.secrets.hash_id_salt)
    hashids.encode(id)
  end

  def self.decode(code)
    hashids = Hashids.new(Rails.application.secrets.hash_id_salt)
    hashids.decode(code).first
  end
end
