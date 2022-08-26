require 'time'
def transform_date_format(dates)
    refactored_dates = []

    dates.each do |date|
        next unless date.include?("-") || date.include?("/")

        if date.include?("-")
            splitter = date.split('-')
            date = "#{splitter[2]}" + "#{splitter[0]}" + "#{splitter[1]}"
        end
        refactored_dates << Date.parse(date).strftime("%Y%m%d")
    end

    return refactored_dates
end
  
p transform_date_format(["2010/02/20", "19/12/2016", "11-18-2012", "20130720"])