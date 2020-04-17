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


def get_japanese_emoticon(file, )
  emoticon_hash = load_library("./lib/emoticons.yml")
end

def get_english_meaning
  # code goes here
end