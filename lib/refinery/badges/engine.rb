module Refinery
  module Badges
    class Engine < Rails::Engine
      include Refinery::Engine
      isolate_namespace Refinery::Badges

      engine_name :refinery_badges

      initializer "register refinerycms_badges plugin" do
        Refinery::Plugin.register do |plugin|
          plugin.name = "badges"
          plugin.url = proc { Refinery::Core::Engine.routes.url_helpers.badges_admin_badges_path }
          plugin.pathname = root
          plugin.activity = {
            :class_name => :'refinery/badges/badge'
          }
          
        end
      end

      config.after_initialize do
        Refinery.register_extension(Refinery::Badges)
      end
    end
  end
end
