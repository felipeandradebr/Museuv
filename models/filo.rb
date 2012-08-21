class Filo < ActiveRecord::Base
  attr_accessible :descricao, :status
  #has_many :clases, :exemplar
end
