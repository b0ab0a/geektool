#!/usr/bin/env ruby
# encoding: utf-8
# Language: Author name/url

### CONFIG [ THESE VALUES OVERRIDE weatherparser.rb ]
# "City, State" or "City, Country" or ZIP Code
$mycity = 'Stuttgart, Germany'
# f for fahrenheit, c for celsius
$f_or_c = 'c'
# folder where the weather icons are located, no trailing slash
$basedir = '~/Dropbox/WeatherIcons'
### END CONFIG

class Translate
  def translate_conditions(phrase)
    conditions_table = {
      'Overcast' => 'bedeckt',
      'Clear' => 'wolkenlos',
      'Partly Cloudy' => 'teilweise bewölkt',
      'Mostly Cloudy' => 'stark bewölkt',
      'Scattered Clouds' => 'vereinzelte Wolken',
      'Light' => 'leicht',
      'Heavy' => 'stark',
      'Drizzle' => 'Niesel',
      'Rain' => 'Regen',
      'Snow' => 'Schnee',
      'Snow Grains' => 'Schneeregen',
      'Ice Crystals' => 'Eiskristalle',
      'Ice Pellets' => 'Graupelschauer',
      'Hail' => 'Hagel',
      'Mist' => 'Dunst',
      'Fog' => 'Nebel',
      'Smoke' => 'Rauch',
      'Volcanic Ash' => 'Vulkanasche',
      'Widespread Dust' => 'staubig',
      'Sand' => 'sandig',
      'Haze' => 'Dunst',
      'Spray' => 'Sprühregen',
      'Dust Whirls' => 'Staubwirbel',
      'Sandstorm' => 'Sandsturm!',
      'Low Drifting Snow' => 'Schneeverwehungen',
      'Low Drifting Widespread Dust' => 'Staubverwehungen',
      'Low Drifting Sand' => 'Staubverwehungen',
      'Blowing Snow' => 'Schneetreiben',
      'Blowing Widespread Dust' => 'Staubtreiben',
      'Blowing Sand' => 'Sandtreiben',
      'Rain Mist' => 'Staubregen',
      'Rain Showers' => 'Regenschauer',
      'Snow Showers' => 'Schneeschauer',
      'Ice Pellet Showers' => 'Graupelschauer',
      'Hail Showers' => 'Hagelschauer',
      'Small Hail Showers' => 'kleine Hagelschauer',
      'Thunderstorm' => 'Gewitter',
      'Thunderstorms and Rain' => 'Gewitter',
      'Thunderstorms and Snow' => 'Gewitter und Schnee',
      'Thunderstorms and Ice Pellets' => 'Gewitter und Graupel',
      'Thunderstorms with Hail' => 'Gewitter und Hagel',
      'Thunderstorms with Small Hail' => 'Gewitter und wenig Hagel',
      'Freezing Drizzle' => 'gefrierender Nieselregen',
      'Freezing Rain' => 'gefrierender Regen',
      'Freezing Fog' => 'Eisnebel',
      'light rain' => 'leichter Regen'
    }
    res = conditions_table[phrase]
    return res == '' || res.nil? ? phrase : res
  end

  def translate_forecast(phrase)
    conditions_table = {
      'Chance of Flurries' => 'Schneegestöber möglich',
      'Chance of Rain' => 'Regen möglich',
      'Chance of Freezing Rain' => 'gefrierender Regen möglich',
      'Chance of Sleet' => 'Schneeregen möglich',
      'Chance of Snow' => 'Schnee möglich',
      'Chance of Thunderstorms' => 'Gewitter möglich',
      'Chance of a Thunderstorm' => 'Gewitter möglich',
      'Clear' => 'klar',
      'Cloudy' => 'wolkig',
      'Flurries' => 'Schneegestöber',
      'Fog' => 'Nebel',
      'Haze' => 'Dunst',
      'Mostly Cloudy' => 'großteils bewölkt',
      'Mostly Sunny' => 'großteils sonnig',
      'Partly Cloudy' => 'teils bewölkt',
      'Partly Sunny' => 'teils sonnig',
      'Freezing Rain' => 'gefrierender Regen',
      'Rain' => 'Regen',
      'Sleet' => 'Graupelregen',
      'Snow' => 'Schnee',
      'Sunny' => 'sonnig',
      'Thunderstorms' => 'Gewitter',
      'Thunderstorm' => 'Gewitter',
      'Unknown' => 'unbekannt',
      'Overcast' => 'bedeckt',
      'Scattered Clouds' => 'vereinzelte Wolken'
    }

    res = conditions_table[phrase]
    return res == '' || res.nil? ? phrase : res
  end

  def translate_strings(phrase)
    strings_table = {
      'Forecast for' => 'Prognose für'
    }
    res = strings_table[phrase]
    return res == '' || res.nil? ? phrase : res
  end

  def translate_day(phrase)
    day_table = {
      'Sunday' => 'Sonntag',
      'Monday' => 'Montag',
      'Tuesday' => 'Dienstag',
      'Wednesday' => 'Mittwoch',
      'Thursday' => 'Donnerstag',
      'Friday' => 'Freitag',
      'Saturday' => 'Samstag'
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
