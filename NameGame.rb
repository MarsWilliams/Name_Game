#You must sudo gem install rb-appscript first to make the singing bit work.

def song 
puts "Let's play the Name Game!"
puts "What's your name?"
name = gets.chomp
name.downcase!
name.split("")
if name[0].include?("a") == true
  then
  nameGame = name
else
nameGame = name[1..-1]
end
nameSong = "#{name}, #{name}, bo b#{nameGame} \n Banana fanna fo f#{nameGame} \n Fee figh mo m#{nameGame} \n #{name}!"
puts nameSong
begin; require 'rubygems'; rescue LoadError; end
require 'appscript'
require 'osax'
osax = OSAX.osax 
osax.say nameSong
end
song

