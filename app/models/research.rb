class Research < ActiveRecord::Base
  validates_presence_of :name , :contents , :main_contents
end
