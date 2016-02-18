class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :movies
  belongs_to :plan
  validates :username, :uniqueness => { :case_sensitive => false,
            :message => "Sorry but this username has been taken" }
            
  def before_save
    self.username = self.email.downcase
  end
  
  validates :email, :uniqueness => { :case_sensitive => false,
          :message => "Sorry but this email is already in use in our system" }
          
  def subscribed?
    stripe_subscription_id?
  end
            
          
end
