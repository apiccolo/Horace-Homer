class Intertext < ActiveRecord::Base
  attr_accessible :obs, :source

  validates_presence_of :horace, :homer
  validates_uniqueness_of :homer_id, :scope => :horace_id

  belongs_to :horace
  belongs_to :homer, :dependent => :destroy
end
