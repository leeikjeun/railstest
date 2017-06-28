class Menu < ActiveRecord::Base
  belongs_to :restaulantInfos
  validates_presence_of :name
  validates_numericality_of :price, :message=>"Error Message"
end
