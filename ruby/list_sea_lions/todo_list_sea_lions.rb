class TodoList
	def initialize(list)
		@list = ["do the dishes", "mow the lawn"]
	end

	def get_items
		@list
	end

	def add_item(item)
		@list << item
	end
end 