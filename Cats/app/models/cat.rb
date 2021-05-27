class Cat < ApplicationRecord
    COLORS = ["brown", "orange", "black", "rainbow", "gray", "white", "calico", "tuxedo", "brown_black_striped", "turqoise"]
    def self.colors
        COLORS
    end
    validates :birth_date, presence: true
    validates :name, presence: true
    validates :description, presence: true
    validates :color, presence: true, inclusion: { in: COLORS,
        message: "%{value} is not a valid color" }
    validates :sex, presence: true, inclusion: { in: %w(M F),
        message: "%{value} is not a valid sex. use M or F" }
    def age
        ((Time.zone.now - birth_date.to_time) / 1.year.seconds).floor
    end

    
    
end