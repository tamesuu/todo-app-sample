module Task
  class Engine < ::Rails::Engine
    isolate_namespace Task
  end
end
