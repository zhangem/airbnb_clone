class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  after_create :send_welcome_message
  has_many :listings

  def send_welcome_message
    UserMailer.deliver_welcome_message(self).deliver
  end

end
