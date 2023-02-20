//: [Previous](@previous)

import PlaygroundSupport
//利用 SFSafariViewController 顯示網頁：
import SafariServices
//輸入網站網址：
let webUrl = URL(string: "https://www.youtube.com/watch?v=wt4-Lc3O_9I")
//建一個可以放網頁的畫面→並將網站的網址輸入
let webController = SFSafariViewController(url: webUrl!)
//設定PlaygroundPage要顯示出的畫面是哪個
PlaygroundPage.current.liveView = webController
//: [Next](@next)
