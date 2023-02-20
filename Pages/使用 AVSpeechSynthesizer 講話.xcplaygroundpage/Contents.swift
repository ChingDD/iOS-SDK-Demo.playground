//: [Previous](@previous)

///使用 AVSpeechSynthesizer 講話
import AVFAudio
//利用AVSpeechUtterance創建台詞
let utterance = AVSpeechUtterance(string: "Do you want a bottle of water")
//更改台詞的內容
//rate：講話速度(0~1)
utterance.rate = 0.5
//pitchMultiplier：音調高低(0.5~2.0)
utterance.pitchMultiplier = 1
//volume：音量大小(0~1)
utterance.volume = 0.5
//voice：改變語言
utterance.voice = AVSpeechSynthesisVoice(language: "en-GB")
//利用AVSpeechSynthesizer合成播放器，並傳入台詞後播放
let synthesize = AVSpeechSynthesizer()
synthesize.speak(utterance)
//: [Next](@next)
