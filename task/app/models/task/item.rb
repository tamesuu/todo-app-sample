module Task
  module Item
    def self.new(params = nil)
      Model.new(params)
    end

    class Model < ApplicationRecord
      self.table_name = 'task_items'
    end
    private_constant :Model
  end
end
