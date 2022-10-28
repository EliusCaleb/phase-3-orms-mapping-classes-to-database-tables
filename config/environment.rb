require 'bundler'
Bundler.require

require_relative '../lib/song'

DB = { conn: SQLite3::Database.new("db/music.db") }   # naming spacing allows logically related object to be bundle them together (modules,class)
