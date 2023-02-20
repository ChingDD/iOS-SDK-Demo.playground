//用 AVPlayer 播音樂：
//建音樂網址
import AVFoundation
let url = URL(string: "https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview122/v4/83/93/60/8393600e-380e-b225-d262-aac205419b4d/mzaf_172005434694601457.plus.aac.p.m4a")
//建播放器→音樂網址放進播放器
let Player = AVPlayer(url: url!)
//播放器播放
Player.play()
