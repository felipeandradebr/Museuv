class Imagem < ActiveRecord::Base
  belongs_to :exemplare
  attr_accessible :foto, :foto_file_name
  has_attached_file :foto
  
  attr_accessor :foto_file_name
  attr_accessor :foto_content_type
  attr_accessor :foto_file_size
  attr_accessor :foto_updated_at
end
