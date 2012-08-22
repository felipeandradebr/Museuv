class Familium < ActiveRecord::Base
  belongs_to :ordem
  has_many :generos
  has_many :exemplares
  
  attr_accessible :descricao, :ordem_id, :status
  
  validates_presence_of :descricao, :message =>" - Deve ser preenchido"
  validates_uniqueness_of :descricao, :message =>" - Já existente"
end
