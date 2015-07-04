class Technology < ActiveRecord::Base
  validates_presence_of :title , :contents
end
