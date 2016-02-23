class ModelSearch
	
	def initialize params
		@value = params[:search]["value"]
		@per_page = params[:length].to_i
		@page = params[:start].to_i / @per_page + 1
		@order_type = params[:order]["0"]["dir"]
	end

	def search model, value, columns
		query = ""
		unless value.empty?
			columns.each do |column|
				query = query + column + "||"
			end
			query = query.chomp("||")
			query = "( " + query + " ) iLIKE ?"
			result = model.where(query, "%#{value.downcase}%")
		else
			result = model.all
		end

		return result, result.count
	end

	def paginate model
		return model.paginate(page: @page, per_page: @per_page)
	end

	def order model, order_column = "", order_type = ""
		return model.order("#{order_column} #{order_type}")
	end

end