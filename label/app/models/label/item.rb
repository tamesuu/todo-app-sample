# Aggregate の責務
module Label
  # クラス名
  module Item
    class Model < ApplicationRecord
      self.table_name = 'label_items'
    end
    private_constant :Model
  end
end
