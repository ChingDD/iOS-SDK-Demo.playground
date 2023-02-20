//: [Previous](@previous)
///產生距離現在3小時50分20秒後的時間
//由於 Date 是在 Foundation 裡定義，所以須 import Foundation
import Foundation
//Date()可以取得現在的時間
var time = Date()
//addTimeInterval計算增加多少秒後的時間是多少
time.addTimeInterval(13820)
//print出來的時間會以英國時間為準，但實際上做app會以字串為主，字串則會是台灣時間
print(time)
///將時間變成特定格式的字串
//DataFormatter()為更改時間格式的東西
var dateformatter = DateFormatter()
//藉由屬性dateFormat可更改時間的格式
dateformatter.dateFormat = "MMM dd, YYYY HH:mm:ss"
//將設定好的dataformater導入目前的時間，並存於變數中，印出來就會是目前時間的特定格式字串
let dateString = dateformatter.string(from: time)
print(dateString)


///取得今天幾年、幾月、幾號、星期幾的數字
//先製作目前的時間
let now = Date()
//Calendar具有年月日的數據，因此輸入Calendar後選擇current與dateComponents，表示提取目前的時間資料，並存在變數
let datecomponents = Calendar.current.dateComponents(in: TimeZone.current, from: now)
//從今天的時間要素中提取月份
let month = datecomponents.month
//從今天的時間要素中提取幾號的數字
let days = datecomponents.day
//從今天的時間要素中提取年度的數字
let year = datecomponents.year
//從今天的時間要素中提取禮拜幾的數字
let dayOfTheWeek = datecomponents.weekday


///dateformatter特殊設定
//將時間表示方式更改成不同國家
let dateTest = Date()
let dateformatterTest = DateFormatter()
dateformatterTest.dateStyle = .full
dateformatterTest.timeStyle = DateFormatter.Style.medium
dateformatterTest.locale = Locale(identifier: "ja-JP")
let dateTestString = dateformatterTest.string(from: dateTest)
print(dateTestString)
//更改時區
let dateTest2 = Date()
let dateformatterTest2 = DateFormatter()
dateformatterTest2.timeZone = TimeZone(identifier: "Australia/Sydney")
dateformatterTest2.dateFormat = "yyyy年M月dd日 aHH:mm:ss"
let dateTestString2 = dateformatterTest2.string(from: dateTest2)
print(dateTestString2)
//: [Next](@next)
