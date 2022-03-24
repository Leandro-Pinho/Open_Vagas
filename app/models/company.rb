class Company < ApplicationRecord
  belongs_to :user  # a empresa pertence a um usuario
  has_many :positions # a empresa tem varias 'positions' ou vagas
  has_one_attached :logo
  validates :name, :url, :logo, presence: true
end
