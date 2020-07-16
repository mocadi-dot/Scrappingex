require 'rubygems'
require 'nokogiri'
require 'open-uri'


def c_nom
  c_nom=[]
  page = nokogiri::HTML(open("https://coinmarketcap.com/all/views/all/")) #P4.Ouvrir l'URL souhaitée sous Nokogiri ... page = Nokogiri::HTML(open("ton_url_a_scrapper.com"))
  page.xpath('//*[@class="cmc-table__column-name sc-1kxikfi-0 eTVhdN"]').each do |node|
    c_nom << node.text
  end
return c_nom
end

def c_prix
  prix=[]
  page.url.xpath('//[@class="cmc-tablecell cmc-tablecell--sortable cmc-tablecell--right cmc-tablecell--sort-by__price"]/[@class="cmc-link"]').each do |node|
  c_prix << node.text
  end
return c_prix
end

c_nom.zip(c_prix).to_h

#Ton array devra avoir le format suivant :
#a = [
#  { "BTC" => 5245.12 },
#  { "ETH" => 217.34 },
#  etc
#]
