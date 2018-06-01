# require modules here

require 'YAML' 

def load_library(file)
  yaml = YAML.load_file(file)
  result = {}
  result["definition"] = {}
  result["emoticon"] = {}
    yaml.each do |meaning, emote|
      result["definition"][emote[1]] = meaning 
      result["emoticon"][emote[0]] = emote[1]
    end 
    result 
end

def get_japanese_emoticon(file, emoticon)
  result = load_library(file)
  result["emoticon"].each do |key, emote|
    if key == emoticon
      emoticon 
    end 
  end 
  "No emoticon found"
end

def get_english_meaning
  # code goes here
end