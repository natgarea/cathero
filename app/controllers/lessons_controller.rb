class LessonsController < ApplicationController
	include LessonsHelper

	def show
		@lesson = Lesson.find(params[:id])
	end

	def require_user 
		redirect_to '/login' unless current_user 
	end

	def check_solution
		lesson = Lesson.find(params[:lesson_id])
		user_answer = params[:answer]
		used_hint = params[:used_hint] == 'true'

		if lesson.solution == user_answer
			success(lesson, used_hint)	
		else
			failure(lesson)
		end
	end

	def success(current_lesson, used_hint)
		award_points_and_badge_for_lesson(current_lesson, used_hint)

		next_lesson = find_next_lesson(current_lesson)
		
		if next_lesson != nil
			redirect_to lesson_path(next_lesson)
		else
			finish_course(current_lesson.course)
		end
	end

	def failure(current_lesson)
		redirect_to lesson_path(current_lesson), :flash => { :error => "Try again or use the hint!" } 
	end

	def award_points_and_badge_for_lesson(current_lesson, used_hint)
		mark_lesson_as_completed(current_lesson)

		if !used_hint
			current_user.score += 5
		end

		if current_lesson.badge != nil
			Achievement.create :user_id => current_user.id, :badge_id => current_lesson.badge.id
		end
		current_user.save
	end

	def finish_course(course)
		if course.badge != nil
			Achievement.create :user_id => current_user.id, :badge_id => course.badge.id
		end
		redirect_to user_path(current_user)
	end

	def mark_lesson_as_completed(current_lesson)
		LessonRegister.create :user_id => current_user.id, :lesson_id => current_lesson.id
	end
	
	before_action :require_user, only: [:index, :show]

end
