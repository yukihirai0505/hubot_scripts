japaneseHoliday = require('japanese-public-holiday')
cron = require('cron').CronJob

module.exports = (robot) ->
  new cron '0 0 10 * * 1-5', () =>
    now = new Date
    if checkIsNotHoliday(now)
      robot.send {room: "#training"}, "test"
   , null, true, "Asia/Tokyo"

#休日でない場合にtrueを返す
checkIsNotHoliday = (date) ->
  if !japaneseHoliday.isPublicHoliday(date)
    return true
  if !checkEndOfTheYear(date)
    return true
  if !checkBeginningOfTheYear(date)
    return true
  return false

#年末の12月29,30,31日かどうかをチェック
checkEndOfTheYear = (date) ->
  month = 12
  day = 29
  for i in [0..2]
    if isHoliday(date, month, day)
      return true
    day++
  return false

#年始の1月2,3日かどうかをチェック
checkBeginningOfTheYear = (date) ->
  month = 1
  day = 2
  for i in [0..1]
    if isHoliday(date, month, day)
      return true
    day++
  return false

#dateとholidayが同一日の場合trueを返す
isHoliday = (date, holidayMonth, holidayDay) ->
  holiday = new Date(date.getFullYear(), holidayMonth-1, holidayDay)
  #dateとholidayが同じ日程であったなら
  if date.getMonth() == holiday.getMonth() and date.getDate() == holiday.getDate()
    return true
  return false
