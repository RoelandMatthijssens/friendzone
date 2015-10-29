class CircleController < ApplicationController
	def index
		@circles = Circle.all
	end

	def new
		@circle = Circle.new
	end
end
