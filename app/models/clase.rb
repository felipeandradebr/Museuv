﻿class Clase < ActiveRecord::Base
  belongs_to :filos
  #has_many :ordes verificar ortografia
  #has_many :exemplares
  attr_accessible :descricao, :status, :filo_id
  
  self.per_page = 10
  
  validates_presence_of :descricao, :message => "- Deve ser preenchido"
  validates_uniqueness_of :descricao, :message =>" - Já existente" 
  
  #scope :filos, select("clases.descricao, filos.descricao").joins("filos ON clases.filo_id = filos.id").order("filos.descricao")
  
  
end
