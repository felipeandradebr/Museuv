class Ordem < ActiveRecord::Base
  belongs_to :clase
  has_many :familium
  has_many :exemplares
  attr_accessible :clase_id, :descricao, :status
  validates_presence_of :descricao, :message =>" - Deve ser preenchido"
end
