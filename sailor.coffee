
module.exports = (robot) ->

  robot.hear /(自己紹介お願いします|お名前は？|誰ですか？)/i, (res) ->
    res.send "私の名前は月野うさぎ！よろしくね！！:heartbeat:"
