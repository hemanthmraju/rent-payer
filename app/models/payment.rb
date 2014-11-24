class Payment < ActiveRecord::Base
	belongs_to :user
	#attr_accessible :rent,:parking,:late_fee,:other,:application_fee,:deposit,:move_in_other,:promo_code,:total
end
