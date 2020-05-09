require 'pry'
#holiday_supplies = {
#  :winter => {
#    :christmas => ["Lights", "Wreath"],
#    :new_years => ["Party Hats"]
#  },
#  :summer => {
#    :fourth_of_july => ["Fireworks", "BBQ"]
#  },
#  :fall => {
#    :thanksgiving => ["Turkey"]
#  },
#  :spring => {
#    :memorial_day => ["BBQ"]
#  }
#}

def second_supply_for_fourth_of_july(holiday_supplies)
  # given that holiday_hash looks like this:
   holiday_supplies[:summer][:fourth_of_july][1]
  # return the second element in the 4th of July array
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash[:winter][:christmas] << supply
  holiday_hash[:winter][:new_years] << supply

end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring][:memorial_day] << supply
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season] = {holiday_name => supply_array}
  holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  holiday_hash[:winter].values.flatten
end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do | season, data|
    #binding.pry
    puts "#{season.capitalize}:"
    data.each do |holiday, supply|
    binding.pry
      arrays = holiday.to_s.split("_")
      arrays.each do |word|
        supply_array.join (" , ")

#binding.pry
    end
      #binding.pry
    end

  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
end

#def all_holidays_with_bbq(holiday_hash)
#holiday_hash.each do |season, data|
  #data.each do |holiday, value|
    #value.each do |supply|
    # if supply == "BBQ"
    # end
