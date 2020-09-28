# require modules here
require "yaml"

def load_library
  data = YAML.load_file('emoticons.yml')
  emoticons = {}
  data.each { |e_meaning, e_value|
    emoticons[e_meaning]
  
end

def get_japanese_emoticon
  
end

def get_english_meaning
  
end