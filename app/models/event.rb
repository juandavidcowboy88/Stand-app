class Event < ApplicationRecord
    has_and_belongs_to_many  :artists
    accepts_nested_attributes_for :artists, allow_destroy: true
    def start_time
        self.date_event ##Where 'start' is a attribute of type 'Date' accessible through MyModel's relationship
    end

end
