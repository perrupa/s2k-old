class Video < ActiveRecord::Base
	has_and_belongs_to_many :bboys
	has_and_belongs_to_many :crews
end
