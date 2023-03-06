#Name: To-Do List program in Ruby
#Date: 3/3/23
#Creator: Lorenzo Juarez

#Description:
#This is a simple program written in Ruby that creates a to-do list. 
#It defines a TodoList class that has methods to add, delete, show, complete, and incomplete tasks in the list.

# To-Do List program in Ruby

class TodoList
  def initialize
    @tasks = []
  end

  def add_task(task)
    @tasks << { name: task, completed: false }
  end

  def delete_task(index)
    @tasks.delete_at(index)
  end

  def show_tasks
    if @tasks.empty?
      puts "No tasks yet!"
    else
      puts "Tasks:"
      @tasks.each_with_index do |task, index|
        status = task[:completed] ? "[X]" : "[ ]"
        puts "#{index + 1}. #{status} #{task[:name]}"
      end
    end
  end

  def complete_task(index)
    @tasks[index][:completed] = true
  end

  def incomplete_task(index)
    @tasks[index][:completed] = false
  end
end

# Example usage
list = TodoList.new

list.show_tasks
# Output: "No tasks yet!"

list.add_task("Buy groceries")
list.add_task("Do laundry")
list.show_tasks
# Output:
# Tasks:
# 1. [ ] Buy groceries
# 2. [ ] Do laundry

list.complete_task(0)
list.show_tasks
# Output:
# Tasks:
# 1. [X] Buy groceries
# 2. [ ] Do laundry

list.incomplete_task(0)
list.show_tasks
# Output:
# Tasks:
# 1. [ ] Buy groceries
# 2. [ ] Do laundry

list.delete_task(1)
list.show_tasks
# Output:
# Tasks:
# 1. [ ] Buy groceries
