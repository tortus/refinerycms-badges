module Refinery
  module Badges
    module Admin
      class BadgesController < ::Refinery::AdminController

        crudify :'refinery/badges/badge', :xhr_paging => true

      end
    end
  end
end
