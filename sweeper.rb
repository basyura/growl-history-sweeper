#!ruby

require 'fileutils'

user = "C:/Users/" + File.basename(File.expand_path("~"))

path = File.expand_path(user + "/AppData/Local/Growl/2.0.0.0/History")

puts path

Dir.glob("#{path}/**/*.*").each do |file|
  FileUtils.rm(file)
  puts file
end
