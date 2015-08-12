class Destination < ActiveRecord::Base
  has_many :waittimes, dependent: :destroy
end
