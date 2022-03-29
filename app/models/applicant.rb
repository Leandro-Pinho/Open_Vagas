require 'csv'

class Applicant < ApplicationRecord
  belongs_to :user # pode se candidatar para uma vaga
  belongs_to :position # a vaga só pode ter um usuario
  validates :name, :email, :phone, :resume, presence: true
  has_one_attached :resume

  validate :correct_resume_mime_type

  def self.as_csv 
    attributes = %w[id name email phone]

    CSV.generate(headers: true) do |csv|
      csv << attributes  

      all.each do |applicant|
        csv << attributes.map { |attr| applicant.send(attr) } 
      end
    end
  end 

  private 

  def correct_resume_mime_type 
    if resume.attached? && !resume.content_type.in?('application/pdf')
      errors.add(:resume, 'Você enviou um tipo de documento inválido. Favor, enviar somente')
    end
  end
end
