# Description:
#   ボットとジャンケンをした結果を出力します
#
# Commands:
#   hubot janken <card> - card は rock(グー)/paper(パー)/scissor(チョキ)
#
# Auther:
#   Stupiddog

# 0:rock 1:paper 2:scissor, key vs value として key が勝利する条件
rules = { 0:2, 1:0, 2:1 }
cards = [ "グー", "チョキ", "パー" ]

# 勝敗判定
judge = (user, comp) ->
  if user == comp
    "引き分けです！"
  else if rules[user] == comp
    "あなたの負けです!"
  else
    "あなたの勝ちです!"

# ジャンケン
janken = (user_card) ->
  user = cards.indexOf(user_card)
  if user == -1
    "#{user_card} ???"
  else
    comp = Math.floor(Math.random() * 3)
    "セーラームーン:#{cards[comp]} vs あなた:#{user_card}\n#{judge(user, comp)}"

module.exports = (robot) ->
  robot.respond /janken (.*)$/i, (msg) ->
    user_card = msg.match[1].trim().toLowerCase()
    msg.send janken(user_card)
