class Applicant < ApplicationRecord
  belongs_to :user # pode se candidatar para uma vaga
  belongs_to :position # a vaga só pode ter um usuario
end
