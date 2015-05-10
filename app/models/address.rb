class Address < ActiveRecord::Base
  belongs_to :client_history
  belongs_to :profile
end
