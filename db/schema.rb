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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20150616023741) do

  create_table "cadcarros", force: true do |t|
    t.string   "marca"
    t.string   "modelo"
    t.string   "cor"
    t.string   "placa"
    t.string   "ano"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cadusers", force: true do |t|
    t.string   "nome"
    t.string   "rg"
    t.string   "cpf"
    t.string   "placa"
    t.string   "box"
    t.string   "turno"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "controle_gerenciamentos", force: true do |t|
    t.float    "valor_hora"
    t.float    "horaadd"
    t.float    "valor_diaria"
    t.float    "mensalista_meioturno"
    t.float    "mensalista_integral"
    t.integer  "num_vagas"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "controles", force: true do |t|
    t.string   "placa"
    t.string   "hora_entrada"
    t.string   "hora_saida"
    t.float    "total"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "gerenciamentos", force: true do |t|
    t.float    "valor_hora"
    t.float    "horaadd"
    t.float    "valor_diaria"
    t.float    "mensalista_meio_turno"
    t.float    "mensalista_integral"
    t.integer  "num_vagas"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "logins", force: true do |t|
    t.string   "user"
    t.string   "senha"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email"
    t.string   "password_hash"
    t.string   "password_salt"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
