class Schedule < ApplicationRecord
	enum day: {monday: 0, tuesday: 1, wensday: 2, thursday: 3, friday: 4, saturday: 5, sunday: 6}
end
