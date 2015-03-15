# require './app/mailers/devise/mailer'
class Traveller < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  after_create :send_welcome_email

  has_many :bucket_list_items
  has_many :bucket_list_item_comments
  has_many :activities, :through => :bucket_list_items
  has_many :destinations, -> {uniq}, :through => :activities

  def guess_name
    self.email.gsub(/@.+/, "").titleize
  end

  private
  def send_welcome_email
    Devise::Mailer.welcome(self).deliver_now
  end
end
