class Exemplar < ActiveRecord::Base
  
  scope :with_nome_vulgar, lambda {|parameter| where('nome_vulgar like ?', "%#{parameter}%")}
  #Equivalente a: SELECT exemplars.nome_vulgar, filos.descricao FROM exemplars INNER JOIN filos ON exemplars.filo_id = filos.id ORDER BY filos.descricao
  #scope :filos, joins("filos").order("filos.descricao")

  attr_accessible :biografia, :codigo_identificacao, :data_chegada, :data_coleta, :foto_costas, :foto_dorso, :identificador, :local_origem, :localizacao_exemplar, :localizacao_geografica, :nome_cientifico, :nome_vulgar, :status


  def self.search(parameters)
	
	exemplar_query = self.scoped
	parameters.each do |parameter, value|
		
		if exemplar_query.respond_to? parameter
			exemplar_query = exemplar_query.send(parameter, value)
		end
	end
	exemplar_query
  end
  
end
