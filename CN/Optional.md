### 全局

干掉时见于各种个人网站上的“网页粒子背景插件”
- [canvas-nest.js](https://github.com/hustcc/canvas-nest.js)
- [particles.js](https://github.com/VincentGarreau/particles.js)

```
*/canvas-nest.min.js$script
*/particles.min.js$script
```

### 百度

完全去除百度二维码登录

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

### 智慧树

登录页背景动画
```
||passport.zhihuishu.com/assets/js/three/three.min.js
```
