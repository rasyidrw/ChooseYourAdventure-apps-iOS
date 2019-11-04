//
//  StoryBrain.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation

struct StoryBrain {
    
    var storyNumber = 0
    
    let stories = [
        Story(title: "Pada suatu hari ada seorang laki-laki jomblo. Apa yang akan dia lakukan agar dia tidak jomblo?",
              choice1: "Memperbaiki diri agar kelak menjadi laki-laki yang sukses, dan tamvan maksimal",
              choice1Destination: 1,
              choice2: "Stalking cewe cakep dongg biar ga jomblo lagiii",
              choice2Destination: 2),
        
        Story(title: "Setelah dia sudah sukses dan tamvan, lalu apakah yang akan dilakukannya?",
              choice1: "Cari jodoh lahh. Kan udah sukses dan tamvan...",
              choice1Destination: 3,
              choice2: "Nanti dulu jangan buru-buru cari jodohh. Cari ridho emak dulu. Karna ridho emak itu ridho nya Allah",
              choice2Destination: 4),
        
        Story(title: "Tapi pas stalking gapunya kuota. Kan si laki-lakinya sobat misqueen :(",
              choice1: "Cari wayfay dong di emol atau kape kape gituu biar hitss",
              choice1Destination: 3,
              choice2: "Jgn maksa. Jodoh udah ada yang atur. Ntr jg dateng sendiri pd waktu yang tepat",
              choice2Destination: 4),
        
        Story(title: "Sukses? Udah. Tamvan? Dari lahir. Udah usaha terus tapi masih gadapet-dapet jugaaaa nihh?!",
              choice1: "Tetap berdoa dan berusaha. Percayalah usaha dan doa itu tidak ada yang sia-sia :)",
              choice1Destination: 4,
              choice2: "Pelet dong......",
              choice2Destination: 5),
        
        Story(title: "Alhamdulillah nak, ternyata kamu anak yang soleh dan berbakti kepada orangtua. Semoga hidupmu selalu bahagia walau bukan dengannya....",
              choice1: "Alhamdulillah yah.. Sesuatu.",
              choice1Destination: 0,
              choice2: "Bct.",
              choice2Destination: 5),
        
        Story(title: "Astaghfirullah nak, kamu ternyata lucknut sebenarnya whichis :(",
              choice1: "Bodo amat :)",
              choice1Destination: 0,
              choice2: "Hidup-hidup gua ngapa lu yang ngatur?!",
              choice2Destination: 0)
    ]
    
    func getStoryTitle() -> String {
        return stories[storyNumber].title
    }
    
    func getChoice1() -> String {
        return stories[storyNumber].choice1
    }
    
    func getChoice2() -> String {
        return stories[storyNumber].choice2
    }
    
    mutating func nextStory(userChoice: String) {
        let currentStory = stories[storyNumber]
        
        if userChoice == currentStory.choice1 {
            storyNumber = currentStory.choice1Destination
        } else if userChoice == currentStory.choice2 {
            storyNumber = currentStory.choice2Destination
        }
    }
}


