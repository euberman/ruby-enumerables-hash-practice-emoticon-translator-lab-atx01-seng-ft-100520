# require modules here
require "yaml"

def load_library (file_location)
  data = YAML.load_file(file_location)
  emoticons = {}
  data.each { |e_key, e_value| emoticons[e_key] = {english: e_value[0], japanese: e_value[1]} }
  puts emoticons
  emoticons
end

def get_japanese_emoticon (file_location, english_emoticon)
  data = load_library(file_location)
  
end

def get_english_meaning (file_location, japanese_emoticon)
  
end