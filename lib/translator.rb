require 'pry'
require "yaml"

def load_library(file)
  loaded_hash = YAML.load_file("./lib/emoticons.yml")
  emoticon_hash = {}
  
  loaded_hash.each do |name_of_emoticon, emoticons|
    if !loaded_hash[name_of_emoticon]
      loaded_hash[name_of_emoticon] = {}
       binding.pry
    end

  end
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end