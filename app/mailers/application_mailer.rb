class ApplicationMailer < ActionMailer::Base
  default from: 'from@example.com'
  layout 'mailer'

  def welcome_user(user)
     @artist = user
     @url = ''
     mail(to: @artist.email, subject: 'Bienvenido a Stand-app')
   end
   def new_post_mail(artist, event)
     @artist = artist
     @event = event
     mail(to: @artist.email, subject: 'Un nuevo evento ha sido creado en Stand-app.')
   end
end
