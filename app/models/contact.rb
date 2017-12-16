


class Contact < MailForm::Base
  attribute :name, subject: => "Имя Клиента",     :validate => true
  attribute :email,     :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i

  attribute :phonenumber,   :validate => true
  attribute :message
  attribute :nickname,  :captcha  => true


  # Declare the e-mail headers. It accepts anything the mail method
  # in ActionMailer accepts.
  def headers
    {
      :subject => "My Contact Form",
      #:to => "nobilia.odessa@gmail.com",
      :to => "klerikmaxxx@gmail.com",
      :from => %("#{name}" <#{email}>)
    }
  end
end

