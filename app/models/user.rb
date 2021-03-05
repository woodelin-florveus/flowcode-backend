class User < ApplicationRecord
    has_many :collections
    has_many :projects, through: :collections

    def make_json_object
        {
            name: self.name
            # collections: self.collections
        }
    end

    def name_plus_10
        "#{self.name} 10"
    end

end
