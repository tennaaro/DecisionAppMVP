class InputsController < ApplicationController

	def new 
		@values = Decision.pluck(:column_name)
	end
end
