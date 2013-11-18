#!/usr/bin/env ruby
# encoding: utf-8
# Credit Alexandra Mumi
# Website: unedeuxtrois.ru

### CONFIG [ THESE VALUES OVERRIDE weatherparser.rb ]
# "City, State" or "City, Country" or ZIP Code
$mycity = 'Moscow, Russian Federation'
# f for fahrenheit, c for celsius
$f_or_c = 'c'
# folder where the weather icons are located, no trailing slash
$basedir = '~/Dropbox/WeatherIcons'
### END CONFIG

class Translate

	def translate_conditions(phrase)
		conditions_table = {
		'Overcast' => 'Сплошная облачность',
		'Clear' => 'Ясно',
		'Partly Cloudy' => 'Переменная облачность',
		'Mostly Cloudy' => 'Пасмурно',
		'Scattered Clouds' => 'Редкие облака',
		'Light' => 'Легкий',
		'Heavy' => 'Сильный',
		'Drizzle' => 'Изморось',
		'Rain' => 'Дождь',
		'Snow' => 'Снег',
		'Snow Grains' => 'Снежная крупа',
		'Ice Crystals' => 'Ледяные кристаллы',
		'Ice Pellets' => 'Ледяной дождь',
		'Hail' => 'Град',
		'Mist' => 'Пасмурно',
		'Fog' => 'Туман',
		'Smoke' => 'Дым',
		'Volcanic Ash' => 'Вулканический пепел',
		'Widespread Dust' => 'Пыль',
		'Sand' => 'Песок',
		'Haze' => 'Легкий туман',
		'Spray' => 'Водяная пыль',
		'Dust Whirls' => 'Пыльная буря',
		'Sandstorm' => 'Песчаная буря',
		'Low Drifting Snow' => 'Поземка',
		'Low Drifting Widespread Dust' => 'Пылевая поземка',
		'Low Drifting Sand' => 'Песчаная поземка',
		'Blowing Snow' => 'Метель',
		'Blowing Widespread Dust' => 'Пылевая метель',
		'Blowing Sand' => 'Самум',
		'Rain Mist' => 'Легкий дождь',
		'Rain Showers' => 'Ливень',
		'Snow Showers' => 'Снегопад',
		'Ice Pellet Showers' => 'Ледяной ливень',
		'Hail Showers' => 'Дождь с градом',
		'Small Hail Showers' => 'Дождь и мелкий град',
		'Thunderstorm' => 'Гроза',
		'Thunderstorms and Rain' => 'Гроза с дождем',
		'Thunderstorms and Snow' => 'Гроза со снегом',
		'Thunderstorms and Ice Pellets' => 'Гроза с градом',
		'Thunderstorms with Hail' => 'Гроза и мелкий град',
		'Thunderstorms with Small Hail' => 'Гроза с ледяной крупой',
		'Freezing Drizzle' => 'Ледяная изморось',
		'Freezing Rain' => 'Ледяной дождь',
		'Freezing Fog' => 'Переохлажденный туман'
		}
		res = conditions_table[phrase]
		return res == '' || res.nil? ? phrase : res
	end

	def translate_forecast(phrase)
		conditions_table = {
		'Chance of Flurries' => 'Возможен снегопад',
		'Chance of Rain' => 'Возможен дождь',
		'Chance of Freezing Rain' => 'Возможен ледяной дождь',
		'Chance of Sleet' => 'Возможен дождь со снегом',
		'Chance of Snow' => 'Возможен снег',
		'Chance of Thunderstorms' => 'Возможны грозы',
		'Chance of a Thunderstorm' => 'Возможна гроза',
		'Clear' => 'Ясно',
		'Cloudy' => 'Облачно',
		'Flurries' => 'Снегопад',
		'Fog' => 'Туман',
		'Haze' => 'Легкий туман',
		'Mostly Cloudy' => 'Пасмурно',
		'Mostly Sunny' => 'Без существенных осадков',
		'Partly Cloudy' => 'Переменная облачность',
		'Partly Sunny' => 'Небольшая облачность',
		'Freezing Rain' => 'Ледяной дождь',
		'Rain' => 'Дождь',
		'Sleet' => 'Дождь со снегом',
		'Snow' => 'Снег',
		'Sunny' => 'Ясно',
		'Thunderstorms' => 'Грозы',
		'Thunderstorm' => 'Гроза',
		'Unknown' => 'Нет данных',
		'Overcast' => 'Сплошная облачность',
		'Scattered Clouds' => 'Редкие облака'
		}

		res = conditions_table[phrase]
		return res == '' || res.nil? ? phrase : res
	end

	def translate_strings(phrase)
		strings_table = {
			'Forecast for' => 'Прогноз для'
		}
		res = strings_table[phrase]
		return res == '' || res.nil? ? phrase : res
	end

	def translate_day(phrase)
		day_table = {
		'Sunday' => 'Воскресенье',
		'Monday' => 'Понедельник',
		'Tuesday' => 'Вторник',
		'Wednesday' => 'Среда',
		'Thursday' => 'Четверг',
		'Friday' => 'Пятница',
		'Saturday' => 'Суббота'
		}
		res = day_table[phrase]
		return res == '' || res.nil? ? phrase : res
	end

	def current_time
		# set the format using strftime placeholders
		# http://apidock.com/ruby/DateTime/strftime
		# Example: 24-hour format
		 time_format = '%H:%M'
		#time_format = '%-l:%M %p'
		Time.now.strftime(time_format)
	end
end
