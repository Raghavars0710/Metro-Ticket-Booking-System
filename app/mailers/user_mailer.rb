class UserMailer < ApplicationMailer
    default from: 'metro.rail.service@gmail.com'

	def welcome_email(user)
	   @user = user 
	   mail(to: current_user.email, subject: 'Welcome to Metro App!')
  	end
end
