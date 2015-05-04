class Link < ActiveRecord::Base
	acts_as_votable
	belongs_to :user
	has_many :comments
  validates_format_of :url, :with => URI::regexp(%w(http https))



end
