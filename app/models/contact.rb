


class Contact < MailForm::Base
  attribute :name,     :validate => true
  attribute :email,     :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i

  attribute :phonenumber,   :validate => true
  attribute :message
  attribute :nickname,  :captcha  => true


  # Declare the e-mail headers. It accepts anything the mail method
  # in ActionMailer accepts.
  def headers
    {
      :subject => "#{name}, желаю Кухню NOBILIA",
      #:to => "nobilia.odessa@gmail.com",
      :to => "nobilia.odessa@gmail.com", 
      :from => %("#{name}" <#{email}>)
    }
  end
end


