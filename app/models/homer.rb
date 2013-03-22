class Homer < ActiveRecord::Base
  attr_accessible :book, :epic, :line, :obs

  validates_presence_of :epic, :book, :line

  has_many :intertexts
  has_many :horaces, :through => :intertexts

  def to_str
    return "#{self.epic}. #{self.book}.#{self.line}"
  end

  def to_line
    tmp = self.line.split("-")
    return "#{tmp[0]}"
  end
  
  def perseus_book
    return "0135" if (self.epic == "Il")
    return "0133" if (self.epic == "Od")
  end
end
