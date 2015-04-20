class Visit < ActiveRecord::Base
  def to_s
    self.to_s + 'VISIT!!!'
  end
end
