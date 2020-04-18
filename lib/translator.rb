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
  sorry_message = "Sorry, that emoticon was not found"
  emoticon_hash.each do |name, value|
    value.each do |element|
      if japanese_emoticon == element[1]
        emoticon_name = name
      end
    end
  end
  if emoticon_name.empty?
    return sorry_message
  end
  emoticon_name 
end



def get_japanese_emoticon(file, english_emoticon)
  emoticon_hash = load_library("./lib/emoticons.yml")
  japanese_version = ""
  
  emoticon_hash.each do |name, value|
    all = value.flatten
    value.each do |emoticon|
      if english_emoticon == emoticon[1]
        japanese_version = emoticon[1]
      end
       binding.pry
    end
  end
  japanese_version
  binding.pry
end


