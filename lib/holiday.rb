require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash[:winter][:christmas] << supply
  holiday_hash[:winter][:new_years] << supply
end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring][:memorial_day] << supply
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
 holiday_hash[season][holiday_name] = supply_array
end

def all_winter_holiday_supplies(holiday_hash)
  holiday_hash[:winter].values
  .flatten
end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |key, value|
    puts "#{key.capitalize}:"
    value.each do |attribute, items|
         new_string = attribute.to_s
         new_arr = new_string.split("_")
            new_arr.collect do |word|
              word.capitalize!
             end
        puts "  #{new_arr.join(" ")}: #{items.join(", ")}"
    end
  end
end


def all_holidays_with_bbq(holiday_hash)
  new_hols = []
  holiday_hash.each do |season, holiday|
    holiday.each do |name, items|
      items.collect do |things|
        if things == "BBQ"
        new_hols << name
      end
    end
  end
end
new_hols
end
