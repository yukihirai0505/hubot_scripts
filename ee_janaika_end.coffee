cron = require('cron').CronJob

module.exports = (robot) ->
  new cron '0 0 17 * * 4', () =>
    robot.send {room: "#ee_janaika"}, "@channel: ええじゃないか締め切ります:star2:"
  , null, true, "Asia/Tokyo"
