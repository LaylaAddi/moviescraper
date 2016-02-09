class Movie < ActiveRecord::Base
  belongs_to :user
  validates_presence_of :title
  validates :hotness, :numericality => {:allow_blank => true}
	validates :image_url, :url => {:allow_blank => true}
	validates :title, :uniqueness => { :case_sensitive => false,
    :message => "Sorry but this movie is already listed" } 
	
  def image_from_url(url)
    self.image = open(url)
  end
	
  has_attached_file :image, styles: { medium: "300x300>", thumb: "100x150>" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

	
end
