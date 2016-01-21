
module.exports = (robot) ->

  robot.hear /(tsukinikawatte|つきにかわって|ツキニカワッテ|月に代わって)/i, (res) ->
    res.send "お仕置きよっ！:heartbeat:"
