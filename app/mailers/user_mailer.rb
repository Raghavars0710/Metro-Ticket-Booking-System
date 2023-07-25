class UserMailer < ApplicationMailer
    default from: 'raghavendra.sharma@preciousinfosystem.com'

	def welcome_email(user)
	    @user = user 
	    mail(to: @user.email, subject: 'Welcome to Metro App!')
  	end
end
