require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Todo
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.2
    config.autoload_paths += %W( #{config.root}/label/app/repositories )
    config.eager_load_paths += %W( #{config.root}/label/app/repositories )
    config.autoload_paths += %W( #{config.root}/label/app/usecases )
    config.eager_load_paths += %W( #{config.root}/label/app/usecases )

    config.autoload_paths += %W( #{config.root}/task/app/repositories )
    config.eager_load_paths += %W( #{config.root}/task/app/repositories )
    ### config.autoload_paths += %W( #{config.root}/task/app/usecases )
    ### config.eager_load_paths += %W( #{config.root}/task/app/usecases )

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.
  end
end
