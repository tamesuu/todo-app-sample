module Label
  module Item
    class Repository
      # TODO:
      # AR インスタンスそのまま返すとsave発行できるから注意
      def self.fetch(id: )
        Model.find(id)
      end

      def self.fetchAll
        Model.all
      end

      def self.save(model)
        # TODO:
        # 具体的な保存処理
        model.save
      end
    end
  end
end
