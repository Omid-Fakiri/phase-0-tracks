  class TodoList
    
    def initialize
      @items = ["do the dishes", "mow the lawn"]
    end

    def get_items
      @items
    end

    def add_item(chore)
     @items << chore
    end

    def delete_item(chore)       
      @items.delete(chore)     
    end

    def get_item(index)
      @items[index]
    end

  end



#list.add_item("mop")
#   it "stores the list items given on initialization" do
#     expect(list.get_items).to eq ["do the dishes", "mow the lawn"]
#   end

#   it "adds an item to the list" do
#     list.add_item("mop")
#     expect(list.get_items).to eq ["do the dishes", "mow the lawn", "mop"]
#   end

#   it "deletes an item" do
#     list.delete_item("do the dishes")
#     expect(list.get_items).to eq ["mow the lawn"]
#   end

#   it "retrieves an item by index" do
#     expect(list.get_item(0)).to eq "do the dishes"
#   end
# end