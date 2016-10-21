class TodoList

  def initialize(array)
    @array = array
  end

  def get_items
    @array
  end

  def add_item(task)
    @array << task
  end

  def delete_item(task)
    @array.delete(task)
  end

  def get_item(i)
    @array[i]
  end
end