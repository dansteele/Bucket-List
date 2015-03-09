# require './app/mailers/devise/mailer'
class Traveller < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  after_create :send_welcome_email

  private
  def send_welcome_email
    Devise::Mailer.welcome(self).deliver_now
  end
end
