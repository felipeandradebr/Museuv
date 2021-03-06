﻿require 'digest'

class Usuario < ActiveRecord::Base
  attr_accessor :senha
  #senha = senha em formato de texto - não é gravada no banco de dados
  #hashed_password = senha criptografada
  
  attr_accessible :nome, :email, :funcao, :usuario, :hashed_password, :status, :senha, :senha_confirmation
  
  self.per_page = 10
  
  validates_presence_of :nome
  validates_presence_of :funcao  
  validates :senha_confirmation, :presence => true,
								 :if => :password_required? 							
  validates :usuario, :presence => true, :length => { :minimum => 3 }
  validates :senha, :presence => true, 
					:length => { :within => 4..20 },
					:confirmation => true,
					:if => :password_required?
  validates_format_of :email, :with => /^[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,4}$/i
  validates_uniqueness_of :nome, :usuario, :email, :message =>" - Já existente"
					
  before_save :encrypt_new_password
	
	def self.authenticate(usuario, senha)
		usuario = find_by_usuario(usuario)
		return usuario if usuario && usuario.authenticated?(senha)
	end
  
	def authenticated?(senha)
		self.hashed_password == encrypt(senha)
	end
	
	protected
	def encrypt_new_password
		return if senha.blank?
		self.hashed_password = encrypt(senha)
		
	end
	
	def password_required?
		hashed_password.blank? || senha.present?
	end
	
	def encrypt(string)
		Digest::SHA1.hexdigest(string)
	end
	
end
