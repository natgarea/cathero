module LessonsHelper
	def find_next_lesson(current_lesson)
		next_lesson = nil
		current_lesson.course.lessons.each do |l|
			if l.order == current_lesson.order + 1
				next_lesson = l
			end
		end

		return next_lesson
	end
end
