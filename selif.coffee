
module.exports = (robot) ->

  robot.hear /(今日なにするの？|今日何するの？|What will you do today?)/i, (res) ->
    res.send "今日はタキシード仮面とデートするんだあ:heartbeat:"
