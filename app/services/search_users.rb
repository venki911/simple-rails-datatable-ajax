class SearchUsers < ModelSearch
	
	def initialize params
		super params
		case params[:order]['0']['column'] 
			when "0"
				@order_column = "id"
			when "1"
				@order_column = "name"
			when "2"
				@order_column = "email"
		end
	end

	def run
		users, record_filtered = self.search(User, @value, ["name", "email"])
		users = self.paginate(users)
		users = self.order(users, @order_column, @order_type)

		return {users: convert_users_to_array(users), record_filtered: record_filtered}
	end

	private

	def convert_users_to_array users
		result = []
		users.each do |user|
			result.push([user.id, user.name, user.email])
		end
		return result
	end
end