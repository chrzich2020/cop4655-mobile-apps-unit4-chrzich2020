//
//  Task.swift
//
//  Created by Colin Hrzich on 9/25/23.
//

import UIKit
import CoreLocation

class Task {
    let title: String
    let description: String
    var image: UIImage?
    var imageLocation: CLLocation?
    var isComplete: Bool {
        image != nil
    }

    init(title: String, description: String) {
        self.title = title
        self.description = description
    }

    func set(_ image: UIImage, with location: CLLocation) {
        self.image = image
        self.imageLocation = location
    }
}

extension Task {
    static var mockedTasks: [Task] {
        return [
            Task(title: "Find Spongebob's Pineapple House",
                 description: "Stop by the Krusty Krab after to grab a delicious Krabby Patty!"),
            Task(title: "Find May's Dolphin",
                 description: "She won't be able to win against Ramlethal "),
            Task(title: "Find",
                 description: "")
        ]
    }
}
