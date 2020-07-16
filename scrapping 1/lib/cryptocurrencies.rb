require 'rubygems'
require 'nokogiri'
require 'open-uri'


def get_cryptos
  page = Nokogiri::HTML(open("https://coinmarketcap.com/all/views/all/"))

    c_nom=[]
    page.xpath('//*[@class="cmc-table__column-name sc-1kxikfi-0 eTVhdN"]').each do |node|
      c_nom << node.text
    end


    c_prix=[]
    page.xpath('//td[@class="cmc-table__cell cmc-table__cell--sortable cmc-table__cell--right cmc-table__cell--sort-by__price"]').each do |node|
      c_prix << node.text
    end

    my_hash = Hash.new
    c_nom.zip(c_prix) { |k,v|  my_hash[k] = v }
    puts my_hash

    c_result = []
    my_hash.each do |pair|
      c_result << pair
    end

  return c_result
end

get_cryptos
