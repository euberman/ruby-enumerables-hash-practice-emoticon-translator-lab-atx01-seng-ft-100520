# require modules here
require "yaml"

def load_library (file_location)
  result = {}
  data = YAML.load_file(file_location)
  data.each { |e_key, e_value|
     result[e_key] = {:english => e_value[0], :japanese => e_value[1]}
  }
  result
end

def get_japanese_emoticon (file_location, english_emoticon)
  data = load_library(file_location)
  data.each { |key,value| 
    if value[:english] == english_emoticon
  }
  return puts "Sorry, that emoticon was not found"
end

def get_english_meaning (file_location, japanese_emoticon)
  data = load_library(file_location)
  data.each { |key,value| 
    return key if value[:japanese] == japanese_emoticon
  }
  return puts "Sorry, that emoticon was not found"
end