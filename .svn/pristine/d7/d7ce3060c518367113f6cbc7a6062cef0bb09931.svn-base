class Espec < ActiveRecord::Base
  belongs_to :genero
  has_many :exemplares
  attr_accessible :descricao, :genero_id, :status
  validates_presence_of :descricao, :message =>" - Deve ser preenchido"
end
