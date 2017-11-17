class ExampleMailer < ApplicationMailer
	default from: "kenny.selorm@gmail.com"

	def sample_email(user)
      @user = user
      mail(to: @user.email, subject: 'Sample Email')
    end

    def booking_email
      @office_mail = "kenny.selorm@gmail.com"
      mail(to: @office_mail, subject: 'Booking Email')
    end
end
