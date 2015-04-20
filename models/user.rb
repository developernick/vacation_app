class User <ActiveRecord::Base
  def to_s
    self.to_s + 'Hello User'
  end
end
