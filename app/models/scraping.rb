class Scraping
  def self.pepe_info
  require 'mechanize'
  link = 'http://studio-pepe.com/event.html'

      agent = Mechanize.new
      page = agent.get(link)
      month_rough = page.search('tr')[1]
      month = month_rough.search('strong')[0].inner_text
      event_all =page.search('tr')[2]
      title = page.search('tr')[2]
      event_all =page.search('tr').size
      event_number = event_all-1

      for i in 2..event_number do
       title = page.search('tr')[i]
       day = title.search('td')[0].inner_text
       time = title.search('td')[1].inner_text
       year_month_day =  "2018-#{month.match(/\d+/)}-#{day.match(/\d+/)}"
       event_name = title.search('td strong').inner_text
         if event_name.match(/Mambongo/)
           event = Event.new(name: event_name, prefecture: "東京都" ,eventday: year_month_day, place: "pepe2", image: 'Mambongo.png', status:0 )
         event.save
         elsif event_name.match(/侍韻/)
         event = Event.new(name: event_name, prefecture: "東京都" ,eventday: year_month_day, place: "pepe2", image: 'samurai.png' , status:0 )
                 event.save
         elsif event_name.match(/Pedro Friday/)
         event = Event.new(name: event_name, prefecture: "東京都" ,eventday: year_month_day, place: "pepe2", image: 'pedro.png' , status:0 )
                 event.save
         elsif event_name.match(/MITSALSA/)
         event = Event.new(name: event_name ,prefecture: "東京都" ,eventday: year_month_day, place: "pepe2", image: 'mitp.jpg' , status:0 )
                 event.save
         elsif event_name.match(/キラキラOn2/)
         event = Event.new(name: event_name ,prefecture: "東京都" ,eventday: year_month_day, place: "pepe2", image: 'kirakira.png' , status:0 )
                 event.save
         else
         event = Event.new(name: event_name ,prefecture: "東京都" ,eventday: year_month_day, place: "pepe2", image: 'NoImage.png' , status:0 )
         event.save
         end
      end
    end
  end
