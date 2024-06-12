# ApplicationMailer is the base mailer from which all other mailers in the
# application inherit. It sets the default from email address and uses the
# 'mailer' layout.
class ApplicationMailer < ActionMailer::Base
  default from: 'from@example.com'
  layout 'mailer'
end
