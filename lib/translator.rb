# require modules here

require "yaml" 

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
    if get == emoticon
      emoticon 
    end 
  end 
  "No emoticon found"
end

def get_english_meaning(file, emoticon)
  result = load_library(file)
  result["definition"].each do |get, meaning|
    if get == emoticon 
      meaning 
    end 
  end 
  "No emoticon is found"
end
