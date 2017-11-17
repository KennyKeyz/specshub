json.extract! booking, :id, :first_name, :middle_name, :last_name, :email, :phone_number, :comment, :created_at, :updated_at
json.url booking_url(booking, format: :json)
