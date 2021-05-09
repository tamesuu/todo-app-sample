module Label
  # クラス名
  module Item
    def self.fetch(id:)
      Model.find(id)
    end

    def self.fetchAll
      Model.all
    end

    class Model < ApplicationRecord
      self.table_name = 'label_items'
    end
    private_constant :Model
  end
end
