# AdditionalFiltersCN

为中国大陆网络服务制作的额外过滤列表，分别针对隐私、广告和干扰；主要适用于浏览器拓展 [uBlock Origin](https://github.com/gorhill/uBlock)。其他支持 AdBlock Plus 规则的
包含一些长期未被处理的、显而易见的数据收集与追踪；哪怕初级网络开发者都能轻易发现并判定它们。

Additional Filters for browser extension based adblockers like [uBlock Origin](https://github.com/gorhill/uBlock), mainly for Chinese mainland internet service, respectively for privacy, advertisement and interruption elements.
Including some obvious trackers which could be found&confirmed by novices in network development easily, and should been listed&blocked YEARS ago.

## CN

　　类别 Variant         | 链接 Link
---------------------------- | ---------
　　　　全部 All             |    [all.txt](https://raw.githubusercontent.com/Crystal-RainSlide/AdditionalFiltersCN/master/CN.txt)
　　数据收集 Data Collection |     [DC.txt](https://raw.githubusercontent.com/Crystal-RainSlide/AdditionalFiltersCN/master/CN/DC.txt)
　　　　广告 Advertisement   |     [Ad.txt](https://raw.githubusercontent.com/Crystal-RainSlide/AdditionalFiltersCN/master/CN/Ad.txt)
　　　　干扰 Spam            |   [spam.txt](https://raw.githubusercontent.com/Crystal-RainSlide/AdditionalFiltersCN/master/CN/spam.txt)
APP 与客户端 App & Client    |    [app.txt](https://raw.githubusercontent.com/Crystal-RainSlide/AdditionalFiltersCN/master/CN/app.txt)
　　分享按钮 Share buttons   |  [share.txt](https://raw.githubusercontent.com/Crystal-RainSlide/AdditionalFiltersCN/master/CN/share.txt)
社交媒体按钮 Social icons    | [social.txt](https://raw.githubusercontent.com/Crystal-RainSlide/AdditionalFiltersCN/master/CN/social.txt)
　　　　修复 Fixes           |    [fix.txt](https://raw.githubusercontent.com/Crystal-RainSlide/AdditionalFiltersCN/master/CN/fix.txt)

备注：修复主要针对 [Easylist filter lists](https://easylist.to/) 和 [Fanboy Lists](https://fanboy.co.nz/)，在未来可能会被移至 Intl。

P.S. Fixes is mainly for [Easylist filter lists](https://easylist.to/) and [Fanboy Lists](https://fanboy.co.nz/). May move to Intl.

## Intl

　　类别 Variant         | 链接 Link
---------------------------- | ---------
　　　　全部 All             |    [all.txt](https://raw.githubusercontent.com/Crystal-RainSlide/AdditionalFiltersCN/master/Intl.txt)
　　数据收集 Data Collection |     [DC.txt](https://raw.githubusercontent.com/Crystal-RainSlide/AdditionalFiltersCN/master/Intl/DC.txt)
　　　　广告 Advertisement   |     [Ad.txt](https://raw.githubusercontent.com/Crystal-RainSlide/AdditionalFiltersCN/master/Intl/Ad.txt)
　　　　干扰 Spam            |   [spam.txt](https://raw.githubusercontent.com/Crystal-RainSlide/AdditionalFiltersCN/master/Intl/spam.txt)
APP 与客户端 App & Client    |    [app.txt](https://raw.githubusercontent.com/Crystal-RainSlide/AdditionalFiltersCN/master/Intl/app.txt)
　　分享按钮 Share buttons   |  [share.txt](https://raw.githubusercontent.com/Crystal-RainSlide/AdditionalFiltersCN/master/Intl/share.txt)
社交媒体按钮 Social icons    | [social.txt](https://raw.githubusercontent.com/Crystal-RainSlide/AdditionalFiltersCN/master/Intl/social.txt)

#### 可选规则 Optional Rules

  [CN](https://github.com/Crystal-RainSlide/AdditionalFiltersCN/blob/master/CN/Optional.md)
[Intl](https://github.com/Crystal-RainSlide/AdditionalFiltersCN/blob/master/Intl/Optional.md)

### 其他规则列表 Other Rulesets

主要适用于中国大陆网络服务。

主页 Homepage | 链接 Link
------------- | ---------
[乘风 广告过滤规则](https://github.com/xinggsf/Adblock-Plus-Rule) | [ABP-FX.txt](https://raw.githubusercontent.com/xinggsf/Adblock-Plus-Rule/master/ABP-FX.txt)
[jCleanList](https://github.com/jiayiming/jCleanList) | [jCleanList_all.txt](https://raw.githubusercontent.com/jiayiming/jCleanList/master/jCleanList_all.txt)
[N2OList China](https://n2o.io/p/quarklist/) | [quarklist.txt](https://n2o.io/p/quarklist/dist/quarklist.txt)
[yiclear](https://www.yiclear.com/) | [ChinaList2.0.txt](http://tools.yiclear.com/ChinaList2.0.txt)
~~[qiumiaojingxi](https://github.com/qiumiaojingxi/qiumiaojingxi)~~ | ~~[QiumiaojingxiList.txt](https://raw.githubusercontent.com/qiumiaojingxi/qiumiaojingxi/master/QiumiaojingxiList.txt)~~

qiumiaojingxi 已经消失。且含有误杀，如 `##div[class$="gg"]` 和 `baike.baidu.com##[target="blank"]`。

#### Rules Merger

[merge.red](https://github.com/Crystal-RainSlide/AdditionalFiltersCN/blob/master/merge.red)

### Q: Why these are listed here but not EasyList China?

A: I DON'T approve submitting filters in forums or chat rooms. Forums and chat rooms are designed for discussion, not massive list data maintenance. Those places don't have enough capacity to match the lists. Obsolete rules are never mentioned after they were created,  undetermined rules are stacked, and the list view don't support tag-based filtering.

Despite the unbelievable simplicity in catching these trackers out, I'll also type a guide for capping trackers in the [wiki](https://github.com/Crystal-RainSlide/AdditionalFiltersCN/wiki) (may move to other place someday... I'll update this link anyway) to ... try to minimize the possibility of occurrence, of those serious negligences.
