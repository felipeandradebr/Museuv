class Exemplar < ActiveRecord::Base
  attr_accessible :biografia, :codigo_identificacao, :data_chegada, :data_coleta, :foto_costas, :foto_dorso, :identificador, :local_origem, :localizacao_exemplar, :localizacao_geografica, :nome_cientifico, :nome_vulgar, :status
  #belongs_to :clase, :filo
end
