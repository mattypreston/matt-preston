class ExperienceHistory < ActiveRecord::Base
  attr_accessible :place_of_work, :position, :date_from, :date_to, :summary
end
