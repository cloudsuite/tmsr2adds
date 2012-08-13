desc "walk site printing out location"
task :walk_site => :environment do
  require 'nokogiri'
  require 'open-uri'
  
  url = "http://localhost:3000"
  doc = Nokogiri::HTML(open(url))
  puts doc.at_css("title").text
  doc.css("a.level1").each do |menu_item|
    puts menu_item[:id]
    #menu_item.hover # this triggers the select? no it has already happened, this just shows the result
    doc.css("div.top_level_product_category").each do |c|
      c.css("div.subcategory").each do |sc|
        #puts sc.css("a") # this returns the whole <a href="/categories/101"><img ...></a>
          # puts sc.css("a img") returns the list of image tags <img alt="790076-000" ...>
          # how do I get just the link out of it ( and then click it to go to the page? )
          # MAYBE DON'T NEED TO: JUST CLICK THE A TA
        puts "clicking link"
        sc.css("a").click # Nope: undefined method 'click' for #<Nokogiri::XML::NodeSet:0x007fb> 
          # neither sc.css("a[:href]") nor sc.css("a.href") work 
      end
      # puts "subcategory" # expect this to print 'subcategory' once for each subcategory in the category
      #puts doc.css("div.#{c} div.subcategory div.subcategoryName").text  # Is c.css legal?  c is a div
      #c.css("div.subcategory a[:href]").click()
    end
      
  end
end