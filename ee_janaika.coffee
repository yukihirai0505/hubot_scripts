cron = require('cron').CronJob

module.exports = (robot) ->
  new cron '0 0 10 * * 4', () =>
    robot.send {room: "#ee_janaika"}, "@channel: 今日はええじゃないかの集計日だよお:star2:"
  , null, true, "Asia/Tokyo"
