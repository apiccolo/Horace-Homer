class Homer < ActiveRecord::Base
  attr_accessible :book, :epic, :line, :obs

  validates_presence_of :epic, :book, :line

  has_many :intertexts
  has_many :horaces, :through => :intertexts

  def to_str
    return "#{self.epic}. #{self.book}.#{self.line}"
  end

end
