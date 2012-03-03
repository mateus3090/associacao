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

ActiveRecord::Schema.define(:version => 20120303173439) do

  create_table "atendentes", :force => true do |t|
    t.string   "codigo"
    t.string   "nome"
    t.string   "cpf"
    t.string   "rg"
    t.string   "endereco"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "automovels", :force => true do |t|
    t.string   "codigo"
    t.string   "modelo"
    t.string   "marca"
    t.string   "tipo"
    t.integer  "cliente_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "automovels", ["cliente_id"], :name => "index_automovels_on_cliente_id"

  create_table "clientes", :force => true do |t|
    t.string   "nome"
    t.string   "telefone"
    t.string   "cpf"
    t.string   "rg"
    t.string   "endereco"
    t.string   "seguro"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ocorrencia", :force => true do |t|
    t.string   "codigo"
    t.string   "data"
    t.string   "descricao"
    t.string   "hora"
    t.integer  "cliente_id"
    t.integer  "seguro_id"
    t.integer  "automovel_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "ocorrencia", ["automovel_id"], :name => "index_ocorrencia_on_automovel_id"
  add_index "ocorrencia", ["cliente_id"], :name => "index_ocorrencia_on_cliente_id"
  add_index "ocorrencia", ["seguro_id"], :name => "index_ocorrencia_on_seguro_id"

  create_table "seguros", :force => true do |t|
    t.string   "codigo"
    t.string   "tipo"
    t.string   "descricao"
    t.integer  "automovel_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "seguros", ["automovel_id"], :name => "index_seguros_on_automovel_id"

end
