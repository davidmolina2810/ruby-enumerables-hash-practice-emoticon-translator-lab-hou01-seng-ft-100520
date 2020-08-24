# require modules here
require 'yaml'
require 'pry'
def load_library(path)
  # code goes here
  emoticons = YAML.load_file(path)
  final_hash = emoticons.each_with_object({}) do |(key, value), hash|
    hash[key] = {
      english: value[0],
      japanese: value[1]
    }
  end
end

def get_japanese_emoticon(file_path, emo)
  # code goes here
  hash = load_library(file_path)
  if hash.keys.contains?(emo)
    hash[emo][:japanese]
  else
    "Sorry, that emoticon was not found"
  end
end

def get_english_meaning(file_path, emo)
  # code goes here
  hash = load_library(file_path)
  if hash.keys.contains?(emo)
    hash[emo][:english]
  else
    "Sorry, that emoticon was not found"
  end
  binding.pry 
end
