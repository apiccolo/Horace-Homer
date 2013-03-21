class Horace < ActiveRecord::Base
  attr_accessible :book, :line, :obs, :ode, :words

  validates_presence_of :book, :ode, :line

  has_many :intertexts
  has_many :homers, :through => :intertexts
  
  def to_str
    tmp  = "#{self.book}.#{self.ode}.#{self.line}"
    tmp += " (#{self.words})" unless self.words.nil?
    return tmp
  end
end
