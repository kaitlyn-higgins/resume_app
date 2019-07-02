class Api::SessionsController < ApplicationController
  def create
    student = Student.find_by(email: params[:email])
    if student && student.authenticate(params[:password])
      jwt = JWT.encode(
        {
          student_id: student.id, # the data to encode
          exp: 24.hours.from_now.to_i # the expiration time
        },
        "6f551b5d0d20aa54780bef0748c09590ddc1f08cf5b5a5019bda832a41e6abeb7ea803ca672dab18b4a5e6d39df12010b5b41d1b9c14a77d9f68879504edffd2", # the secret key
        'HS256' # the encryption algorithm
      )
      render json: {jwt: jwt, email: student.email, student_id: student.id}, status: :created
    else
      render json: {}, status: :unauthorized
    end
  end

end
