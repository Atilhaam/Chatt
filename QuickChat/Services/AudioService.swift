//  Copyright (c) 2020 Ilham


import AudioToolbox

class AudioService {
  
  func playSound()  {
    var soundID: SystemSoundID = 0
    let soundURL = NSURL(fileURLWithPath: Bundle.main.path(forResource: "newMessage", ofType: "wav")!)
    AudioServicesCreateSystemSoundID(soundURL, &soundID)
    AudioServicesPlaySystemSound(soundID)
  }
}
