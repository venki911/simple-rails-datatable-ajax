class UsersController < ApplicationController
	def index
	end

	def data_table
		result = SearchUsers.new(params).run

		render json: {recordsTotal: result[:record_filtered], recordsFiltered: result[:record_filtered], data: result[:users]}
	end
end

