module ScheduleHelper
	def ScheduleHelper.time(time)
		arr = time.to_a
		min = arr[1].to_s
		if(min.length == 1)
			min += "0"
		end
		return arr[2].to_s + ":" + min
	end
end
