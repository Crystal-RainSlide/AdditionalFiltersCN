### 全局

干掉时见于各种个人网站上的“网页粒子背景插件” [canvas-nest.js](https://github.com/hustcc/canvas-nest.js)（[Demo](https://git.hust.cc/canvas-nest.js/)）
``` Adblock
*/canvas-nest.min.js$script
```

### Userstyles.org

Block Userstyles.org offical's dazzling userstyles
```
userstyles.org##.us-stylecard--short:has(a[href="/users/394989"])
userstyles.org##.us-stylecard--long:has(a[href="/users/394989"])
```
Block annoying carousel on Userstyles.org's homepage
```
userstyles.org###view_inner > div:has(#wrapper-carousel)
```
! Since Userstyles.org's Roboto is just a common UI font (similar to ALL the default Sans-Serif UI fonts), you may block it like nothing happens.
```
||fonts.googleapis.com^$domain=userstyles.org
```

### 百度

去除百度二维码登录
```
baidu.com##.tang-pass-qrcode
baidu.com###passport-login-pop-api:style(display: block !important;visibility: visible !important)
baidu.com##.tang-pass-footerBar > p[title$="登录"]
baidu.com##.tang-pass-footerBarPhoenix > span.tang-pass-footerBarPhoenixSplit:style(visibility: hidden)
baidu.com##.tang-pass-footerBarPhoenixItem:style(left: 6px !important)
```
干掉百度搜索结果页码上的百度狗爪
```
www.baidu.com##.fk
www.baidu.com###page > strong, #page > a[href^="/s"]:style(height:36px !important)
```

### Bilibili

带会员
```
www.bilibili.com##.nav-menu li.nav-item[report-id="big_tab_click"]
```
