module Label
  module Item
    class Repository
      def self.fetch(id: )
        Model.find(id)
      end

      def self.fetchAll
        Model.all
      end
    end
  end
end
