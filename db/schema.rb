# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120711053823) do

  create_table "clases", :force => true do |t|
    t.string   "descricao"
    t.boolean  "status"
    t.integer  "filo_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "clases", ["filo_id"], :name => "index_clases_on_filo_id"

  create_table "especs", :force => true do |t|
    t.string   "descricao"
    t.boolean  "status"
    t.integer  "genero_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "especs", ["genero_id"], :name => "index_especs_on_genero_id"

  create_table "exemplares", :force => true do |t|
    t.string   "nome_vulgar"
    t.string   "nome_cientifico"
    t.string   "codigo_identificacao"
    t.string   "local_origem"
    t.string   "localizacao_geografica"
    t.string   "identificador"
    t.string   "localizacao_acervo"
    t.text     "biografia"
    t.date     "data_coleta"
    t.date     "data_chegada"
    t.boolean  "status"
    t.integer  "clase_id"
    t.integer  "ordem_id"
    t.integer  "familia_id"
    t.integer  "genero_id"
    t.integer  "espec_id"
    t.datetime "created_at",             :null => false
    t.datetime "updated_at",             :null => false
    t.integer  "filo_id"
    t.string   "dorso_file_name"
    t.string   "dorso_content_type"
    t.integer  "dorso_file_size"
    t.datetime "dorso_updated_at"
    t.string   "costas_file_name"
    t.string   "costas_content_type"
    t.integer  "costas_file_size"
    t.datetime "costas_updated_at"
  end

  add_index "exemplares", ["clase_id"], :name => "index_exemplares_on_clase_id"
  add_index "exemplares", ["espec_id"], :name => "index_exemplares_on_espec_id"
  add_index "exemplares", ["familia_id"], :name => "index_exemplares_on_familia_id"
  add_index "exemplares", ["genero_id"], :name => "index_exemplares_on_genero_id"
  add_index "exemplares", ["ordem_id"], :name => "index_exemplares_on_ordem_id"

  create_table "exemplars", :force => true do |t|
    t.string   "nome_vulgar"
    t.string   "nome_cientifico"
    t.string   "codigo_identificacao"
    t.string   "local_origem"
    t.string   "localizacao_geografica"
    t.string   "identificador"
    t.date     "data_coleta"
    t.date     "data_chegada"
    t.binary   "foto_costas"
    t.binary   "foto_dorso"
    t.string   "localizacao_exemplar"
    t.text     "biografia"
    t.boolean  "status"
    t.datetime "created_at",             :null => false
    t.datetime "updated_at",             :null => false
  end

  create_table "familia", :force => true do |t|
    t.string   "descricao"
    t.boolean  "status"
    t.integer  "ordem_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "familia", ["ordem_id"], :name => "index_familia_on_ordem_id"

  create_table "filos", :force => true do |t|
    t.string   "descricao"
    t.boolean  "status"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "generos", :force => true do |t|
    t.string   "descricao"
    t.boolean  "status"
    t.integer  "familia_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "generos", ["familia_id"], :name => "index_generos_on_familia_id"

  create_table "imagems", :force => true do |t|
    t.integer  "exemplare_id"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
    t.string   "foto_file_name"
    t.string   "foto_content_type"
    t.integer  "foto_file_size"
    t.datetime "foto_updated_at"
  end

  add_index "imagems", ["exemplare_id"], :name => "index_imagems_on_exemplare_id"

  create_table "ordems", :force => true do |t|
    t.string   "descricao"
    t.boolean  "status"
    t.integer  "clase_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "ordems", ["clase_id"], :name => "index_ordems_on_clase_id"

  create_table "sessions", :force => true do |t|
    t.string   "session_id", :null => false
    t.text     "data"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "sessions", ["session_id"], :name => "index_sessions_on_session_id"
  add_index "sessions", ["updated_at"], :name => "index_sessions_on_updated_at"

  create_table "usuarios", :force => true do |t|
    t.string   "nome"
    t.string   "email"
    t.string   "funcao"
    t.string   "usuario"
    t.string   "hashed_password"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.boolean  "status"
    t.string   "senha_confirmation"
  end

end
