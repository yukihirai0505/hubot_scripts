module.exports = (robot) ->
  robot.hear /(.+)から選んで/, (res) ->
    items = res.match[1].split(/[・、\s]+/)
    item = res.random items
    res.reply "#{item}で！"
