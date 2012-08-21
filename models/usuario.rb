class Usuario < ActiveRecord::Base
  attr_accessible :nome, :email, :funcao, :usuario, :senha, :status
  
  validates_presence_of :nome
  validates_presence_of :funcao  
  validates :usuario, :presence => true, :length => { :minimum => 3 }
  validates :senha, :presence => true, :length => { :minimum => 4 }
  

end
