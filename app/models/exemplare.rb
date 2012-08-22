class Exemplare < ActiveRecord::Base
  #Busca
  scope :with_nome_vulgar, lambda {|parameter| where('nome_vulgar like ?', "%#{parameter}%")}
  #scope :with_nome_vulgar, lambda {|parameter| where('filo_id like ?', "%#{parameter}%")}
  
  #Relacionamentos
  belongs_to :filo
  belongs_to :clase
  belongs_to :ordem
  belongs_to :familia
  belongs_to :genero
  belongs_to :espec
  
  #Acesso
  attr_accessible :biografia, :clase_id, :codigo_identificacao, :data_chegada, :data_coleta, :filo_id, :espec_id, :familia_id, :genero_id, :identificador, :local_origem, :localizacao_exemplar, :localizacao_geografica, :nome_cientifico, :nome_vulgar, :ordem_id, :status, :dorso, :costas
  attr_accessible  :codigo_de_identificacao, :data_de_coleta, :data_da_chegada, :localizacao_do_acervo, :local_de_origem
  
  #Anexos
  has_attached_file :dorso, :styles => { :small => "150x150>" },
					:url => "/uploads/:attachment/:id/:style/:basename.:extension",
					:path => ":rails_root/public/uploads/:attachment/:id/:style/:basename.:extension"
  has_attached_file :costas, :styles => { :small => "150x150>" },
					:url => "/uploads/:attachment/:id/:style/:basename.:extension",
					:path => ":rails_root/public/uploads/:attachment/:id/:style/:basename.:extension"
  
  #Validação
  validates_presence_of :nome_vulgar, :message =>" - Deve ser preenchido"
  validates_attachment_content_type :dorso, :costas, :content_type => ['image/jpeg', 'image/png']

  
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
