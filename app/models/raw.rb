class Raw < ApplicationRecord

    def to_s
        self.raw_name
    end
end
