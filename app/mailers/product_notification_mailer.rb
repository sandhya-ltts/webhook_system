class ProductNotificationMailer < ApplicationMailer

	def new_changes_notification(user, changes)
    @user = user
    @changes = changes
    mail(to: user.email, subject: 'New Changes Notification')
  end
  
end
