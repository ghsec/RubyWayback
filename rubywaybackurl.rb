require "open-uri"

system("clear") # clean terminal display

text = """
###########################################
#          With LOVE Frome GEORGIA        #  
# Url scraper on Wayback BY Gocha Okradze #
#            Bugcrowd: @oqradze           #
###########################################
"""
puts text   
puts


print "Enter domain name: "
domains = gets.chomp

waybackData = open("https://web.archive.org/cdx/search?url=*.#{domains}/*&matchType=prefix&collapse=urlkey&output=json&fl=original").read

savedFile = open("#{domains}.json", "w")
savedFile.write(waybackData)
savedFile.close

puts "Data is downloaded in #{domains}.json file."

