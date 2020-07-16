require 'rubygems'
require 'nokogiri'
require 'open-uri'

# Récupération de l'email d'une mairie depuis son URL
page = Nokogiri::HTML(open("https://www.annuaire-des-mairies.com/95/avernes.html"))
mairie_email = page.xpath("/html/body/div/main/section[2]/div/table/tbody/tr[4]/td[2]").text

def get_mairie_email(url)
    list = Hash.new
    url = url[1..-1]
    page = Nokogiri::HTML(open('http://annuaire-des-mairies.com' + url)) # url + missing
    email = page.xpath('/html/body/div/main/section[2]/div/table/tbody/tr[4]/td[2]').text
end
