class Genero < ActiveRecord::Base
  belongs_to :familia
  has_many :especs
  has_many :exemplares
  
  attr_accessible :descricao, :familia_id, :status
  
  validates_presence_of :descricao, :message =>" - Deve ser preenchido"
  validates_uniqueness_of :descricao, :message =>" - Já existente" 
  
end
