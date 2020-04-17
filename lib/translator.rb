require 'pry'
require "yaml"

def load_library(file)
  loaded_hash = YAML.load_file("./lib/emoticons.yml")
  emoticon_hash = {}
  
  loaded_hash.each do |name_of_emoticon, emoticons|
    if !emoticon_hash[name_of_emoticon]
      emoticon_hash[name_of_emoticon] = {}
    end
    if !emoticon_hash[name_of_emoticon][:english]
      emoticon_hash[name_of_emoticon][:english] = emoticons[0]
    end
    if !emoticon_hash[name_of_emoticon][:japanese]
      emoticon_hash[name_of_emoticon][:japanese] = emoticons[1]
    end
  end
  emoticon_hash
end



def get_english_meaning(file, japanese_emoticon)
  emoticon_hash = load_library("./lib/emoticons.yml")
  emoticon_name = ""
  
  emoticon_hash.each do |name, value|
    value.each do |element|
      if japanese_emoticon == emoticon[1]
        emoticon_name = name
      end
      binding.pry
    end
  end
end



def get_japanese_emoticon
  # code goes here
end


