//
//  Data.swift
//  Nice VK App
//
//  Created by Tatyana on 29.10.2020.
//  Copyright © 2020 Max&Co. All rights reserved.
//

import Foundation


var usersData = [User(firstName: "Keanu", lastName: "Reeves", avatar: #imageLiteral(resourceName: "hipster-1"),
                      photos: [#imageLiteral(resourceName: "keanu3"), #imageLiteral(resourceName: "keanu4"), #imageLiteral(resourceName: "keanu5")]),
                 User(firstName: "John", lastName: "Travolta", avatar: #imageLiteral(resourceName: "beard-1"), photos: [#imageLiteral(resourceName: "Travolta3"), #imageLiteral(resourceName: "Travolta2"), #imageLiteral(resourceName: "Travolta1")]),
                 User(firstName: "Johnny", lastName: "Depp", avatar: #imageLiteral(resourceName: "man-1"), photos: [#imageLiteral(resourceName: "Johnny3"), #imageLiteral(resourceName: "Jonny2"), #imageLiteral(resourceName: "Jonny1")]),
                 User(firstName: "Matthew", lastName: "McConaughey", avatar: #imageLiteral(resourceName: "profile-1"),
                      photos: [#imageLiteral(resourceName: "Mat1"), #imageLiteral(resourceName: "Mat2"), #imageLiteral(resourceName: "Mat3")])
]


var groupData = [Group(name: "18+", avatar: #imageLiteral(resourceName: "gender"), description: nil, subscribers: 325768),
                 Group(name: "Popular Films", avatar: #imageLiteral(resourceName: "video-player"), description: nil, subscribers: 500103),
                 Group(name: "Wild animals", avatar: #imageLiteral(resourceName: "animal"), description: nil, subscribers: 1052),
                 Group(name: "About YouTube", avatar: #imageLiteral(resourceName: "youtube"), description: nil, subscribers: 157554),
                 Group(name: "iOS Apps Free", avatar: #imageLiteral(resourceName: "app-store"), description: nil, subscribers: 5487),
                 Group(name: "Marvel", avatar: #imageLiteral(resourceName: "marvel"), description: nil, subscribers: 489500),
                 Group(name: "Swift Developers", avatar: #imageLiteral(resourceName: "swift"), description: nil, subscribers: 1430),
                 Group(name: "Anime Party", avatar: #imageLiteral(resourceName: "totoro"), description: nil, subscribers: 8700)
]
