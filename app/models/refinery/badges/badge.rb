module Refinery
  module Badges
    class Badge < Refinery::Core::BaseModel
      self.table_name = 'refinery_badges'      
    
      acts_as_indexed :fields => [:title, :link]

      validates :title, :presence => true, :uniqueness => true
          
      belongs_to :image, :class_name => '::Refinery::Image'
      validates :image, :presence => true
      
      attr_accessible :title, :link, :image_id, :hidden, :position
      
      # Determine whether a link has been entered for the badge.
      def link?; not link.blank?; end
      
      # Returns badges with hidden == false
      def self.active
        where(:hidden => false)
      end
      
      # Order badges by position ascending
      def self.by_position
        order("position ASC")
      end
        
    end
  end
end
