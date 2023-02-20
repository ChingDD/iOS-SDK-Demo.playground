//: [Previous](@previous)
//用 AVPlayerViewController 播影片：
import PlaygroundSupport
import AVKit
//先建影片網址
let vedioUrl = URL(string: "https://movietrailers.apple.com/movies/dreamworks/puss-in-boots-the-last-wish/puss-In-boots-the-last-wish-trailer-1b_h1080p.mov")
//建播放器→影片網址放進播放器
let vedioPlayer = AVPlayer(url: vedioUrl!)
//建一個可以放影片的畫面
let controller = AVPlayerViewController()
//設定要放在畫面上的播放器是哪個
controller.player = vedioPlayer
//設定PlaygroundPage要顯示出的畫面是哪個
//liveView表示播放的畫面，可以顯示一個view或controller，而且顯示的東西是可以操作的
PlaygroundPage.current.liveView = controller
//播放器播放
vedioPlayer.play()
//: [Next](@next)
