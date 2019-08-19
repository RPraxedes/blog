class Todo < ApplicationRecord
  # creating entries: initiate a new record, then save the record to db
  # ex. lunch = Todo.new(name: "lunch", description: "Time to cook lunch") <-- creates but not save
  # lunch.save <-- commit transaction
  # lunch.create saves/commits after creation
  # Todo.all, Todo.find #
  # updating needs a variable then variable.save
  # Todo.first, Todo.last
  # RECORD.destroy <-- commits immediately
  # todo.save <-- returns true or false
  # todo.save! <-- raises exceptions if the record is invalid
  # todo.errors.messages <-- accesses the error messages
  # todo.errors[:attr].any? <-- checks is there are errors

  ## VALIDATION
  validates :name, presence: true
  validates :description, presence: true
  # validates :description, numericality: true, on: :var
  # todo.valid?(:var)

  has_many :task
end
