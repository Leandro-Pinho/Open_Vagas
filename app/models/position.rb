class Position < ApplicationRecord
  # as positions ou vagas pertence a empresa
  belongs_to :company
  # enum é um array, que guarda a posição no array como numeros, começando por 0, 
  enum career: [:developer, :business_inteligence, :information_technology, :design, :product, :technology, :other]

  enum contract: [:clt, :pj, :match]
  # para mudar o texto 
  has_rich_text :description
  # validação para os campos 
  validates :name, :career, :contract, :city, :state, :sumary, presence: true
  # depois de salva chama a set_slug
  before_save :set_slug 

  private 
  # criar uma url da vaga
  def set_slug 
    self.slug = "#{self.company.name.parameterize}-#{self.name.parameterize}"
  end
end

