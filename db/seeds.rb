if defined?(::Refinery::User)
  ::Refinery::User.all.each do |user|
    if user.plugins.where(:name => 'refinerycms-badges').blank?
      user.plugins.create(:name => 'refinerycms-badges',
                          :position => (user.plugins.maximum(:position) || -1) +1)
    end
  end
end


