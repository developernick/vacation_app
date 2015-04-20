class Location < ActiveRecord::Base
  def to_s
    self.to_s + 'Its all about .....'
