namespace :scrape do
  desc "Install a new feature into backstage"
  task :substances, [:url] => :environment do |t, args|
    agent = Mechanize.new
    page = agent.get('http://www.food.com/library/all')
    substances = page.search(".content ul a").collect do |linc|
      Mechanize::Page::Link.new(linc, agent, page)
    end
    substances.sample(50).each do |sub|
      name = sub.text
      sub.click
      search = agent.page.search('.Ingredient > p')
      fields = ScrapeHelper.parse_fields(search)

      if fields.type.eql?('Technique')
        Technique.create(name: name, description: fields.description)
      else
        Substance.create(name: name,
                          description: fields.description,
                          season: fields.season,
                          selection: fields.selection,
                          storage: fields.storage,
                          pairing: fields.pairing)
      end
    end

  end
end

