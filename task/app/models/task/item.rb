module Task
  module Item
    class Model < ApplicationRecord
      self.table_name = 'task_items'
    end
    private_constant :Model
  end
end
