# Description
# 今日のランチと岡本さんのランチををおすすめしてくれます
# 
# Dependencies:
# 
# 
# Configuration:
#  none
# 
# Commands:
#  none
# 
# Notes:
#  none
# 
# Author:
#  Yuki Hirai
module.exports = (robot) ->
  robot.hear /(今日のランチ)/i, (res) ->
    recommendations = [
      "http://pplog.org/wp-content/uploads/2012/01/IMG_2013.jpg",
      "http://d1daqzcwh0982r.cloudfront.net/img/post/member/biz_photo/10000396/1000039604_mdm_sq.jpg",
      "http://uds.gnst.jp/rest/img/9kr5nss40000/s_003p.jpg?t=1439344865",
      "http://ja.listofimages.com/wp-content/uploads/2012/09/Food-%E9%A3%9F%E5%93%81%E3%80%81%E3%83%95%E3%83%A9%E3%82%A4%E3%83%89%E3%83%9D%E3%83%86%E3%83%88%E3%80%81%E3%82%BF%E3%83%9E%E3%83%8D%E3%82%AE%E3%80%81%E3%83%95%E3%82%A1%E3%83%BC%E3%82%B9%E3%83%88%E3%83%95%E3%83%BC%E3%83%89%E3%80%81%E3%83%8F%E3%83%B3%E3%83%90%E3%83%BC%E3%82%AC%E3%83%BC.jpg",
      "http://www.yokohamadaihanten.com/images/topimg01.jpg",
      "http://2chanmatomematome.up.n.seesaa.net/2chanmatomematome/image/img10431704170.jpeg?d=a3",
      "http://www.ntv.co.jp/aozora/recipes/assets_c/2010/06/%E3%83%91%E3%82%A8%E3%83%AA%E3%82%A2-thumb-560x373-3249.jpg",
      "http://img2.groupon.jp/shop/09/05/80509_top_3.jpg",
      "http://dietbiyori.com/images/images/zaru.jpg",
      "http://image.rakuten.co.jp/sakenonishida/cabinet/food/food/img56843949.jpg",
      "http://wedding.gnavi.co.jp/site/2/gcyh600/images/TOP2_0_3_732269.jpg?timestamp=18313",
      "http://www.yukihirai0505.com/wp-content/uploads/2015/08/sumire.png",
      "https://www.japan100.jp/image.php?w=450&h=0&f=images/item/1/520.jpg"
    ]
    okamotoLunch = [
      "http://livedoor.blogimg.jp/nnt_boy-zawasoku/imgs/2/6/26c338e6.jpg",
      "http://livedoor.blogimg.jp/guusoku/imgs/7/e/7ec35d34.jpg",
      "http://www.lipcre.sakura.ne.jp/diary/2008/kaiji/120.JPG",
      "http://resize.blogsys.jp/63784d272aabc1680b90ee0f9e2d2997775b7e77/crop1/210x210/http://livedoor.blogimg.jp/clark_project-animeshi/imgs/b/3/b3a03e0a.jpg",
      "http://blog-imgs-61.fc2.com/p/a/c/pachikiwami/img15b4d547zik7zj.jpg"
    ]
    res.send "今日のランチは\n #{res.random recommendations} \n 岡本さんのランチは \n #{res.random okamotoLunch}"
