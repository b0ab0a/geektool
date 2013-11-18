#!/usr/bin/env ruby
# encoding: UTF-8
# Langauge: Author name/url

### CONFIG [ THESE VALUES OVERRIDE weatherparser.rb ]
# "City, State" or "City, Country" or ZIP Code
$mycity = 'XXXXXX'
# f for fahrenheit, c for celsius
$f_or_c = 'c'
# folder where the weather icons are located, no trailing slash
$basedir = '~/Dropbox/WeatherIcons'
### END CONFIG

class Translate
  def translate_conditions(phrase)
    conditions_table = {
      'Overcast' => 'Tapat',
      'Clear' => 'Serè',
      'Partly Cloudy' => 'Parcialment ennuvolat',
      'Mostly Cloudy' => 'Ennuvolat',
      'Scattered Clouds' => 'Núvols dispersos',
      'Light' => 'Lleuger',
      'Heavy' => 'Fort',
      'Drizzle' => 'Plugim',
      'Rain' => 'Pluja',
      'Snow' => 'Neu',
      'Snow Grains' => 'Neu granulada',
      'Ice Crystals' => 'Cristalls de gel',
      'Ice Pellets' => 'Calamarsa petita',
      'Hail' => 'Calamarsa',
      'Mist' => 'Boirina',
      'Fog' => 'Boira',
      'Smoke' => 'Fum',
      'Volcanic Ash' => 'Cendra volcànica',
      'Widespread Dust' => 'Núvols de pols',
      'Sand' => 'Sorra',
      'Haze' => 'Boira',
      'Spray' => 'Rocio',
      'Dust Whirls' => 'Remolins de pols',
      'Sandstorm' => 'Tempesta de sorra',
      'Low Drifting Snow' => 'Baixes acumulacions de neu',
      'Low Drifting Widespread Dust' => 'Lleugers núvols de pols',
      'Low Drifting Sand' => 'Lleuger torb de sorra',
      'Blowing Snow' => 'Torb de neu',
      'Blowing Widespread Dust' => 'Torb de pols',
      'Blowing Sand' => 'Torb de sorra',
      'Rain Mist' => 'Pluja i boirina',
      'Rain Showers' => 'Pluges',
      'Snow Showers' => 'Nevada',
      'Ice Pellet Showers' => 'Pedregada',
      'Hail Showers' => 'Xàfecs',
      'Small Hail Showers' => 'Ruixats',
      'Thunderstorm' => 'Tempesta',
      'Thunderstorms and Rain' => 'Pluja i tempestes elèctriques',
      'Thunderstorms and Snow' => 'Neu i tempestes',
      'Thunderstorms and Ice Pellets' => 'Calamarsa petita i tempestes elèctriques',
      'Thunderstorms with Hail' => 'Tempestes amb calamarsa',
      'Thunderstorms with Small Hail' => 'TTempestes amb calamarsa petita',
      'Freezing Drizzle' => 'Plugim gelat',
      'Freezing Rain' => 'Pluja gelada',
      'Freezing Fog' => 'Boira gelada'
    }
    res = conditions_table[phrase]
    return res == '' || res.nil? ? phrase : res
  end

  def translate_forecast(phrase)
    conditions_table = {
      'Chance of Flurries' => 'Probabilitat de lleugeres nevades',
      'Chance of Rain' => 'Probabilitat de pluja',
      'Chance of Freezing Rain' => 'Probabilitat de pluja gelada',
      'Chance of Sleet' => 'Possibilitat d\'aiguaneu',
      'Chance of Snow' => 'Possibilitat de neu',
      'Chance of Thunderstorms' => 'Probabilitat de tempestes elèctriques',
      'Chance of a Thunderstorm' => 'Probabilitat de tempesta',
      'Clear' => 'Serè',
      'Cloudy' => 'Ennuvolat',
      'Flurries' => 'Lleugeres nevades',
      'Fog' => 'Boira',
      'Haze' => 'Boirina',
      'Mostly Cloudy' => 'Majorment ennuvolat',
      'Mostly Sunny' => 'Majorment assolellat',
      'Partly Cloudy' => 'Parcialment ennuvolat',
      'Partly Sunny' => 'Parcialment assolellat',
      'Freezing Rain' => 'Pluja gelada',
      'Rain' => 'Pluja',
      'Sleet' => 'Aiguaneu',
      'Snow' => 'Neu',
      'Sunny' => 'Assolellat',
      'Thunderstorms' => 'Tempestes elèctriques',
      'Thunderstorm' => 'Tempesta',
      'Unknown' => 'Desconegut',
      'Overcast' => 'Cobert',
      'Scattered Clouds' => 'Núvols dispersos'
    }

    res = conditions_table[phrase]
    return res == '' || res.nil? ? phrase : res
  end

  def translate_strings(phrase)
    strings_table = {
      'Forecast for' => 'Pronòstic per'
    }
    res = strings_table[phrase]
    return res == '' || res.nil? ? phrase : res
  end

  def translate_day(phrase)
    day_table = {
      'Sunday' => 'Diumenge',
      'Monday' => 'Dilluns',
      'Tuesday' => 'Dimarts',
      'Wednesday' => 'Dimecres',
      'Thursday' => 'Dijous',
      'Friday' => 'Divendres',
      'Saturday' => 'Dissabte'
    }
    res = day_table[phrase]
    return res == '' || res.nil? ? phrase : res
  end

  def current_time
    # set the format using strftime placeholders
    # http://apidock.com/ruby/DateTime/strftime
    # Example: 24-hour format
    # time_format = '%H:%M'
    time_format = '%-l:%M %p'
    Time.now.strftime(time_format)
  end
end
