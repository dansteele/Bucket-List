class Devise::Mailer < Devise.parent_mailer.constantize

  def welcome(user)
    mail to: user.email, from: "admin@bucketlist.org", subject: "Welcome"
  end

end