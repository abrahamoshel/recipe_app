class ScrapeHelper < OpenStruct
  HASH_MAPPING = {"Season:" => 'season',
                  "How to select:" => 'selection',
                  "How to store:" => "storage",
                  "How to prepare:" => "preparation",
                  "Matches well with:" => "pairing"
                }

  def self.parse_fields(nokogiri_results)
    description = nokogiri_results[0].text.strip
    type = nokogiri_results[1].text.strip
    fields = ScrapeHelper.new(description: description, type: type)
    fields.set_field(nokogiri_results[2..100])
    fields
  end

  def set_field(nokogiri_results)
    nokogiri_results.each do |result|
      casify(result.text)
    end
  end

  def casify(text)
    case text
      when /Season.+/
        self.season = text.gsub('Season:', '').strip
      when /How to select.+/
        self.selection = text.gsub('How to select:', '').strip
      when /How to store.+/
        self.storage = text.gsub('How to store:', '').strip
      when /How to prepare.+/
        self.preparation = text.gsub('How to prepare:', '').strip
      when /Matches well with.+/
        self.pairing = text.gsub('Matches well with:', '').strip
    end
  end
end



# Season:
# How to select:
# How to store:
# How to prepare:
# Matches well with:

#       description = search[0].text.strip
#       type = search[1].text.strip
#         season = search[2].text.strip unless search[2].blank?
#         selection = search[3].text.strip unless search[3].blank?
#         storage = search[4].text.strip unless search[4].blank?
