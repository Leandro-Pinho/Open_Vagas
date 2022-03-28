class User < ApplicationRecord
  has_one :company # o usuario tem uma empresa
  # o usuario pode se candidatar para varias vagas
  has_many :applicants
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, 
         :recoverable, :rememberable, :validatable
  after_create :welcome_mail 

  private 

  def welcome_mail 
    UserMailer.welcome(self).deliver_now 
  end
end