class SessionRecap < ApplicationRecord
    has_many :characters

    after_initialize :set_defaults

    def set_defaults
        self.played_on = Date.today if self.new_record?
    end
end
