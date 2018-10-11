def get_the_email_of_a_townhal_from_its_webpage
  require 'open-uri'
  require 'nokogiri'
  doc = Nokogiri::HTML(open("http://annuaire-des-mairies.com/95/vaureal.html"))
  doc.xpath('/html/body/div/main/section[2]/div/table/tbody/tr[4]/td[2]').each do |node|
  puts node.text
  end

def get_all_the_urls_of_val_doise_townhalls
  require 'open-uri'
      require 'nokogiri'
      arr = []
      doc = Nokogiri::HTML(open("http://annuaire-des-mairies.com/val-d-oise.html"))
      doc.xpath('//p/a').each do |node|
        arr.push(node.text)
      end
      print arr

end


end
get_the_email_of_a_townhal_from_its_webpage()
get_all_the_urls_of_val_doise_townhalls()
