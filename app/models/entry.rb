require 'obscenity/active_model'
# http://www.rubydoc.info/gems/obscenity/1.0.2

class Entry < ActiveRecord::Base
  validates :title, obscenity: { 
    message: "Keep it clean" 
  }
end
