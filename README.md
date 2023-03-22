# AdditionalFiltersCN

主要为中国大陆网络服务制作的额外过滤列表，适用于浏览器拓展 [uBlock Origin] 等。
按照隐私、广告和干扰等分类整理。包含一些显而易见但长期未被处理的数据收集与追踪；
哪怕初级网络开发者都能轻易发现并判定它们。

Additional Filters for browser extension based adblockers like [uBlock Origin].
Mainly for Chinese mainland internet service, splitted into privacy,
advertisement, interruption elements and so on.
Including some obvious trackers which could be found & confirmed by novices
in network development easily, and should been listed & blocked YEARS ago.

[uBlock Origin]: https://github.com/gorhill/uBlock

此列表本是我为避免频繁地向各个过滤列表提交规则而创建的，随着列表的完善，
更新可能会逐渐减少。但由于本列表的内容多数未被提交至其他列表，除非此情况有改变，
否则不应认为本列表已经过时。

This list was created to avoid frequent submission to various filter lists,
As the list become more complete, updates may happen less frequently.
However, since most of the content of this list has not been submitted to
other lists, thus, unless this situation changes, otherwise this list should not
be considered out of date.


## 全部 All

“全部”包含当前大类下下所有类别与针对性规则。

All includes all the variants and specific rules in current category.

- [CN.txt](https://raw.githubusercontent.com/Crystal-RainSlide/AdditionalFiltersCN/master/CN.txt)
- [Intl.txt](https://raw.githubusercontent.com/Crystal-RainSlide/AdditionalFiltersCN/master/Intl.txt)
- [Game.txt](https://raw.githubusercontent.com/Crystal-RainSlide/AdditionalFiltersCN/master/Game.txt)

## 类别 Variants

### CN

　　　　类别 Variant         | 链接 Link
---------------------------- | ---------
　　数据收集 Data Collection |    [DC.txt](https://raw.githubusercontent.com/Crystal-RainSlide/AdditionalFiltersCN/master/CN/DC.txt)
　　　　广告 Advertisement   |    [Ad.txt](https://raw.githubusercontent.com/Crystal-RainSlide/AdditionalFiltersCN/master/CN/Ad.txt)
　　　　干扰 Spam            |  [Spam.txt](https://raw.githubusercontent.com/Crystal-RainSlide/AdditionalFiltersCN/master/CN/Spam.txt)
APP 与客户端 App & Client    |   [APP.txt](https://raw.githubusercontent.com/Crystal-RainSlide/AdditionalFiltersCN/master/CN/APP.txt)
　　分享按钮 Share buttons   | [Share.txt](https://raw.githubusercontent.com/Crystal-RainSlide/AdditionalFiltersCN/master/CN/Share.txt)
　　会员相关 VIP             |   [VIP.txt](https://raw.githubusercontent.com/Crystal-RainSlide/AdditionalFiltersCN/master/CN/VIP.txt)

### Intl

　　　　类别 Variant         | 链接 Link
---------------------------- | ---------
　　数据收集 Data Collection |    [DC.txt](https://raw.githubusercontent.com/Crystal-RainSlide/AdditionalFiltersCN/master/Intl/DC.txt)
　　　　广告 Advertisement   |    [Ad.txt](https://raw.githubusercontent.com/Crystal-RainSlide/AdditionalFiltersCN/master/Intl/Ad.txt)
　　　　干扰 Spam            |  [Spam.txt](https://raw.githubusercontent.com/Crystal-RainSlide/AdditionalFiltersCN/master/Intl/Spam.txt)
APP 与客户端 App & Client    |   [APP.txt](https://raw.githubusercontent.com/Crystal-RainSlide/AdditionalFiltersCN/master/Intl/APP.txt)
　　分享按钮 Share buttons   | [Share.txt](https://raw.githubusercontent.com/Crystal-RainSlide/AdditionalFiltersCN/master/Intl/Share.txt)

## Game

类别 Variant | 链接 Link
------------ | ---------
中文 CN      |   [CN.txt](https://raw.githubusercontent.com/Crystal-RainSlide/AdditionalFiltersCN/master/Game/CN.txt)
国际 Intl    | [Intl.txt](https://raw.githubusercontent.com/Crystal-RainSlide/AdditionalFiltersCN/master/Game/Intl.txt)

## 针对性规则 Specific Rules

### CN

名称 Name   | 链接 Link
----------- | ---------
微信 WeChat | [NoWeWontChat.txt](https://raw.githubusercontent.com/Crystal-RainSlide/AdditionalFiltersCN/master/CN/NoWeWontChat.txt)
修复 Fixes  | [fix.txt](https://raw.githubusercontent.com/Crystal-RainSlide/AdditionalFiltersCN/master/CN/fix.txt)

备注：本来，修复主要针对 [Easylist filter lists] 和 [Fanboy Lists]，
现在，修复会覆盖下面的其他规则列表中的规则。

P.S. Originally, Fixes is mainly for [Easylist filter lists] and [Fanboy Lists],
now, all the rules listed in Other Rulesets are covered.

[Easylist filter lists]: https://easylist.to/
[Fanboy Lists]: https://fanboy.co.nz/

## 可选规则 Optional Rules

一些可自行选用的规则。并非订阅，请手动选用需要的规则。

Some optional Rules for your choices. Not subscribe-able, please pick the useful ones up into your user filters manually.

- CN: [CN/Optional.md](https://github.com/Crystal-RainSlide/AdditionalFiltersCN/blob/master/CN/Optional.md)
- Intl: [Intl/Optional.md](https://github.com/Crystal-RainSlide/AdditionalFiltersCN/blob/master/Intl/Optional.md)

## 镜像 Mirror Services

提供者 Provider | 示例链接 Example Links
--------------- | ----------------------
[GitCDN] / [Alternative Domain][GitCDN Alternative] / [GitHub Repo][GitCDN Repo] | https://gitcdn.xyz/repo/Crystal-RainSlide/AdditionalFiltersCN/master/CN.txt <br> https://gitcdn.link/repo/Crystal-RainSlide/AdditionalFiltersCN/master/CN.txt
[jsDelivr] / [GitHub Repo][jsdelivr Repo] | https://cdn.jsdelivr.net/gh/Crystal-RainSlide/AdditionalFiltersCN/CN.txt
[Statically] / [GitHub Repo][Statically Repo] | https://cdn.staticaly.com/gh/Crystal-RainSlide/AdditionalFiltersCN/master/CN.txt
[raw.githack.com] / [GitHub Repo][raw.githack.com Repo] | https://raw.githack.com/Crystal-RainSlide/AdditionalFiltersCN/master/CN.txt

[GitCDN]: https://gitcdn.xyz
[GitCDN Alternative]: https://gitcdn.link
[jsDelivr]: https://www.jsdelivr.com/?docs=gh
[Statically]: https://statically.io/
[raw.githack.com]: https://raw.githack.com/

[GitCDN Repo]:          https://github.com/schme16/gitcdn.xyz
[jsdelivr Repo]:        https://github.com/jsdelivr/jsdelivr
[Statically Repo]:      https://github.com/staticallyio/statically
[raw.githack.com Repo]: https://github.com/neoascetic/rawgithack

镜像更新有一定延迟。

不建议大规模使用 raw.githack.com 的开发用镜像。参见[官方 FAQ][GitHack FAQ]。

It is not suggested to use the raw.githack.com development mirror heavily, see [GitHack FAQ].

[GitHack FAQ]: https://raw.githack.com/faq#development-in-production

## 其他规则列表 Other Rulesets

### CN

主页 Homepage     | 链接 Link
----------------- | ---------
[乘风]            | 广告过滤规则：[rule.txt][乘风 广告过滤规则] <br> 视频广告过滤规则：[mv.txt][乘风 视频广告过滤规则]
[QuarkList]       | [quarklist.txt]
[ublock-CingList] | [ublock-CingList.txt]
[jCleanList]      | [jCleanList_all.txt]

[乘风]:                  https://gitee.com/xinggsf/Adblock-Rule/
[乘风 广告过滤规则]:     https://gitee.com/xinggsf/Adblock-Rule/raw/master/rule.txt
[乘风 视频广告过滤规则]: https://gitee.com/xinggsf/Adblock-Rule/raw/master/mv.txt

[QuarkList]:     https://n2o.io/p/quarklist/
[quarklist.txt]: https://n2o.io/p/quarklist/dist/quarklist.txt

[ublock-CingList]:     https://github.com/dupontjoy/customization/tree/master/Rules/uBlock
[ublock-CingList.txt]: https://raw.githubusercontent.com/dupontjoy/customization/master/Rules/uBlock/%5Brule%5Dublock-CingList.txt

[jCleanList]:         https://github.com/jiayiming/jCleanList
[jCleanList_all.txt]: https://raw.githubusercontent.com/jiayiming/jCleanList/master/jCleanList_all.txt

### Intl

主页 Homepage | 链接 Link
------------- | ---------
[BarbBlock] [GitHub][BarbBlock GitHub] | [ublock-origin.txt][BarbBlock uBO] <br> [adblock-plus.txt][BarbBlock ADP] <br> [hosts][BarbBlock hosts]

[BarbBlock]:        https://paulgb.github.io/BarbBlock/
[BarbBlock GitHub]: https://github.com/paulgb/BarbBlock
[BarbBlock uBO]:    https://paulgb.github.io/BarbBlock/blacklists/ublock-origin.txt
[BarbBlock ADP]:    https://paulgb.github.io/BarbBlock/blacklists/adblock-plus.txt
[BarbBlock hosts]:  https://paulgb.github.io/BarbBlock/blacklists/hosts-file.txt

#### 规则合并器 Rules Merger

[merge.red](https://github.com/Crystal-RainSlide/AdditionalFiltersCN/blob/master/merge.red)
