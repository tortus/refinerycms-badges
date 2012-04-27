module Refinery
  module Badges
    class Badge < Refinery::Core::BaseModel
      self.table_name = 'refinery_badges'      
    
      acts_as_indexed :fields => [:title, :link]

      validates :title, :presence => true, :uniqueness => true
          
      belongs_to :image, :class_name => '::Refinery::Image'
      
      attr_accessible :title, :link, :image_id, :hidden, :position
        
    end
  end
end
