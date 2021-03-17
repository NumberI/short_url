class Url < ApplicationRecord
    require 'securerandom'

    validates :long, presence: true, uniqueness: true
    validates :short, uniqueness: true

    before_create :add_short_url

    def add_short_url
        self.short = SecureRandom.alphanumeric(6)
    end

    def up_stats
        self.update(stats: self.stats + 1)
    end
end
