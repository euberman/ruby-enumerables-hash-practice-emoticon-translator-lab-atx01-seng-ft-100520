# require modules here
require "yaml"

def load_library
  data = YAML.load_file('emoticons.yml')
  emoticons = {}
  data.each { |e_key, e_value| emoticons[e_key] = {english: e_value[0], japanese: e_value[1]} }
  puts emoticons
  emoticons
end

def get_japanese_emoticon
  
end

def get_english_meaning
  
end