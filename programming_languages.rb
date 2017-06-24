require "pry"

def reformat_languages(languages)
  newhash = {}
  languages.each do |style, type|
    type.each do |language, description|
      if newhash[language] == nil
        newhash[language] = description
        newhash[language][:style] = [style]
      else
        newhash[language][:style] << style
      end
    end
  end
  newhash
end
