# require modules here
require "yaml"

def load_library (file_location)
  emoticons = {}
  YAML.load_file(file_location).each { |e_key, e_value| emoticons[e_key] = {english: e_value[0], japanese: e_value[1]} }
  puts emoticons
  emoticons
end

def get_japanese_emoticon (file_location, english_emoticon)
  data = load_library(file_location)
  data.each { |key,value| 
    return value[:japanese] if value[:english] == english_emoticon
  }
end

def get_english_meaning (file_location, japanese_emoticon)
  data = load_library(file_location)
  data.each { |key,value| 
    return key if value[:japanese] == japanese_emoticon
  }
end