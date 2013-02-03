class Resume < ActiveRecord::Base
  attr_accessible :experience, :objective, :name, :skills, :title
end
