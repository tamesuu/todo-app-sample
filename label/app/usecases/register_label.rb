module Label
  # 一覧を取得する
  class RegisterLabel
    def self.call
      items = Label::Item::Repository.fetchAll
    end
  end
end
