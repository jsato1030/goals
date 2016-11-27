class Scraping
  def self.movie_urls
    agent = Mechanize.new
    links = []
    next_url = ""
    base_url = "http://travel.rakuten.co.jp/"
    sub_url = "yado/kanagawa/yokohama.html"
    while true
      current_page = agent.get( base_url + sub_url + next_url)
      elements = current_page.search('li section div h1 a')
      elements.each do |ele|
        links << ele.get_attribute('href')
      end

      next_link = current_page.at('.pagingBack a')
      break unless next_link
      next_url = next_link.get_attribute('href')

      base_url = ""
      sub_url = ""
    end


    # price = current_page.search('.htlPrice span').inner_text if current_page('.htlPrice span')
    # puts price
    # htlAccess = current_page.at('.htlAccess').inner_text if current_page('.htlAccess')
    # puts htlAccess



    links.each do |link|
      current_page = agent.get(link)
      # element = current_page.at('li#htlRnk a') 
       element = current_page.at('ul li div div a') 
      if element != nil then
        url = element.get_attribute('href') 
        get_product(url)
      else
        puts "-------リンクなし--------"
      end
    end
  end

  def self.get_product(link)
    agent = Mechanize.new
    page = agent.get(link)
    name = page.at('.rtconds.fn').inner_text if page.at('.rtconds.fn')
    puts name
    url = page.at('.rtconds.fn').get_attribute('href') if page.at('.rtconds.fn')
    puts url
    rate = page.at('.rate').inner_text if page.at('.rate')
    # if rate == nil then
    #   rate = page.at('.rate.rate40').inner_text if page.at('.rate.rate40')
    # end
    puts rate

    # image_url = page.at('.entry-content img')[:src] if page.at('.entry-content img')
    # director = page.at('.director span').inner_text if page.at('.director span')
    # detail = page.at('.entry-content p').inner_text if page.at('.entry-content p')
    # open_date = page.at('.date span').inner_text if page.at('.date span')

    # product = Product.where(title: title).first_or_initialize
    # product.image_url = image_url
    # product.director = director
    # product.detail = detail
    # product.open_date = open_date
    # product.save
  end
end
