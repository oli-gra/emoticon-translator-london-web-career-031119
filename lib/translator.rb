require 'yaml'
require 'pry'

def load_library(path)
  emoticons = YAML.load_file('./lib/emoticons.yml')
<<<<<<< HEAD
  emoticon_lib = {'get_meaning'  => {},
                  'get_emoticon' => {} }
  emoticons.each do |meaning, emote|
    eng = emote[0]
    jap = emote[1]
    emoticon_lib['get_meaning'][jap] = meaning
    emoticon_lib['get_emoticon'][eng] = jap
=======

   emoticon_lib = {'get_meaning'  => {},
                  'get_emoticon' => {} }

   emoticons.each do |meaning, value|  # meaning= "surprised"   # value= [":o", "o_O"]  <-(e,j)
    english = value[0]
    japanese = value[1]
    emoticon_lib['get_meaning'][value[0]] = meaning
    emoticon_lib['get_emoticon'][value[1]] = japanese
>>>>>>> 23ea3af8f697f3796d18caa66e69171d147bfee1
  end
  emoticon_lib
end

def get_japanese_emoticon (path,emoticon)
  emoticon_lib = load_library(path)
  emoticon_lib["get_emoticon"].each do |eng,jap|
    return jap if eng == emoticon
  end
  return "Sorry, that emoticon was not found"
end

def get_english_meaning (path,emoticon)
  emoticon_lib = load_library(path)
  emoticon_lib['get_meaning'].each do |emo,meaning|
    return meaning if emo == emoticon
  end
  return "Sorry, that emoticon was not found"
end