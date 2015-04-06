class Link < ActiveRecord::Base
	acts_as_votable
	belongs_to :user
	has_many :comments
  before_validation :smart_add_url_protocol
  validates_format_of :url, :with => URI::regexp(%w(http https))

protected

  def smart_add_url_protocol
    unless self.url[/\Ahttp:\/\//] || self.url[/\Ahttps:\/\//]
      self.url = "http://#{self.url}"
    end
  end
end
