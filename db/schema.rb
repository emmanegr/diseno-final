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

ActiveRecord::Schema.define(:version => 20120503000404) do

  create_table "becas", :force => true do |t|
    t.string   "nombre"
    t.string   "pais"
    t.string   "web"
    t.string   "fecha"
    t.text     "carreras"
    t.string   "representante"
    t.string   "contacto"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "descripcion"
    t.string   "fotobeca_file_name"
    t.string   "fotobeca_content_type"
    t.integer  "fotobeca_file_size"
    t.datetime "fotobeca_updated_at"
  end

  create_table "categorias", :force => true do |t|
    t.string   "nombre"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "categorias_posts", :id => false, :force => true do |t|
    t.integer "post_id"
    t.integer "categoria_id"
  end

  create_table "categorias_users", :id => false, :force => true do |t|
    t.integer "categoria_id"
    t.integer "user_id"
  end

  create_table "comentarios", :force => true do |t|
    t.text     "contenido"
    t.integer  "user_id"
    t.integer  "post_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "comentarios", ["post_id"], :name => "index_comentarios_on_post_id"
  add_index "comentarios", ["user_id"], :name => "index_comentarios_on_user_id"

  create_table "concursos", :force => true do |t|
    t.string   "titulo"
    t.text     "descripcion"
    t.integer  "categoria_id"
    t.string   "web"
    t.string   "entrega"
    t.string   "premio"
    t.string   "jurado"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "fotoconcurso_file_name"
    t.string   "fotoconcurso_content_type"
    t.integer  "fotoconcurso_file_size"
    t.datetime "fotoconcurso_updated_at"
  end

  add_index "concursos", ["categoria_id"], :name => "index_concursos_on_categoria_id"

  create_table "posts", :force => true do |t|
    t.string   "titulo"
    t.string   "subtitulo"
    t.text     "descripcion"
    t.integer  "user_id"
    t.integer  "gusta"
    t.integer  "nogusta"
    t.text     "comentarios"
    t.integer  "vistas"
    t.integer  "categoria_id"
    t.string   "current_session"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "fotopost1_file_name"
    t.string   "fotopost1_content_type"
    t.integer  "fotopost1_file_size"
    t.datetime "fotopost1_updated_at"
    t.string   "fotopost2_file_name"
    t.string   "fotopost2_content_type"
    t.integer  "fotopost2_file_size"
    t.datetime "fotopost2_updated_at"
    t.string   "fotopost3_file_name"
    t.string   "fotopost3_content_type"
    t.integer  "fotopost3_file_size"
    t.datetime "fotopost3_updated_at"
    t.string   "fotopost4_file_name"
    t.string   "fotopost4_content_type"
    t.integer  "fotopost4_file_size"
    t.datetime "fotopost4_updated_at"
    t.string   "fotopost5_file_name"
    t.string   "fotopost5_content_type"
    t.integer  "fotopost5_file_size"
    t.datetime "fotopost5_updated_at"
  end

  add_index "posts", ["categoria_id"], :name => "index_posts_on_categoria_id"
  add_index "posts", ["user_id"], :name => "index_posts_on_user_id"

  create_table "sessions", :force => true do |t|
    t.string   "session_id", :null => false
    t.text     "data"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "sessions", ["session_id"], :name => "index_sessions_on_session_id"
  add_index "sessions", ["updated_at"], :name => "index_sessions_on_updated_at"

  create_table "users", :force => true do |t|
    t.string   "crypted_password",                       :null => false
    t.string   "password_salt",                          :null => false
    t.string   "email",                                  :null => false
    t.string   "persistence_token",                      :null => false
    t.string   "single_access_token",                    :null => false
    t.string   "perishable_token",                       :null => false
    t.integer  "login_count",         :default => 0,     :null => false
    t.integer  "failed_login_count",  :default => 0,     :null => false
    t.datetime "last_request_at"
    t.datetime "current_login_at"
    t.datetime "last_login_at"
    t.string   "current_login_ip"
    t.string   "last_login_ip"
    t.string   "name",                :default => "",    :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "active",              :default => false
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.string   "prefe1"
    t.string   "prefe2"
    t.string   "prefe3"
    t.string   "nombre"
    t.string   "apellido"
    t.string   "profesion"
    t.string   "compania"
    t.string   "web"
    t.string   "pais"
    t.string   "ciudad"
    t.text     "about"
  end

end
