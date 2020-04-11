# require modules here

require 'pry'

def load_library(yaml)
  require 'yaml'
  emoticons = YAML.load_file(yaml)

  emoticon_hash = {}
  emoticons.each do |emoticon_name, emoticon_array|
    #binding.pry
    inner_hash = {}
    inner_hash[:english] = emoticon_array[0]
    inner_hash[:japanese] = emoticon_array[1]
    emoticon_hash[emoticon_name] = inner_hash
  end
  emoticon_hash
end


def get_japanese_emoticon
  # code goes here
end

def get_english_meaning(yaml, english_element)
  uploaded_hash = load_library(yaml)
  
    uploaded_hash.each do |emoticon_name, inner_hash|
    inner_hash.each do |english_japanese, element|
      binding.pry
      if element == english_element
        return emoticon_name
      end
    end
  end
  
end