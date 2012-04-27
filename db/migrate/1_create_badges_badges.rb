class CreateBadgesBadges < ActiveRecord::Migration

  def up
    create_table :refinery_badges do |t|
      t.string :title
      t.string :link
      t.integer :image_id
      t.boolean :hidden, :default => false, :null => false
      t.integer :position

      t.timestamps
    end

  end

  def down
    if defined?(::Refinery::UserPlugin)
      ::Refinery::UserPlugin.destroy_all({:name => "refinerycms-badges"})
    end

    drop_table :refinery_badges

  end

end
