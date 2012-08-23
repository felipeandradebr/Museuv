class Filo < ActiveRecord::Base
  has_many :clases
  has_many :exemplares
  attr_accessible :descricao, :status
  
  self.per_page = 10
  
  scope :busca, joins(:clases).order("filos.descricao")
  
  validates_presence_of :descricao, :message =>" - Deve ser preenchido"
  validates_uniqueness_of :descricao, :message =>" - Já existente" 
end
