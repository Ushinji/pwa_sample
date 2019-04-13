class Project < ApplicationRecord
  before_save :set_key_hash

  private
    def set_key_hash
      self.key_hash = SecureRandom.hex(8) unless self.key_hash
    end
end
