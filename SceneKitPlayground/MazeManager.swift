//
//  MazeManager.swift
//  SceneKitPlayground
//
//  Created by Minhung Ling on 2017-09-05.
//  Copyright © 2017 Minhung Ling. All rights reserved.
//

import UIKit

enum Direction: Int {
    case north = 0
    case west = 1
    case south = 2
    case east = 3
}

class MazeManager: NSObject {
    static let sharedInstance = MazeManager()
    private override init() {}
    var maze = Maze(dictionary: [:])
    var mazeArray = [Maze]()
    
    func setUp() {
        createMazeArray()
        let number = arc4random_uniform(UInt32(mazeArray.count))
        maze = mazeArray[3]
        //        maze = mazeArray[Int(number)]
    }
    /*0 up
     1 left
     2 down
     3 right*/
    func createMazeArray() {
        let maze0 = Maze(dictionary: [
            0: [4, 5, 6, 7, 8],
            1: [1, 2, 6],
            2: [1, 2, 3, 4, 6, 8],
            3: [4, 8],
            4: [0, 2, 4, 6],
            5: [2, 6, 7],
            6: [1, 2, 4, 6, 7, 8],
            7: [1, 4, 7],
            8: [1, 3, 4, 6, 8],
            9: [1, 6]
            ])
        maze0.start = (0, 9)
        maze0.end = (9, 0)
        maze0.startFacing = .north
        mazeArray.append(maze0)
        
        let maze1 = Maze(dictionary: [
            1: [0, 1, 2, 4, 5, 6, 7, 8],
            2: [2, 4, 8],
            3: [1, 2, 4, 5, 6, 8],
            4: [8],
            5: [0, 1, 2, 3, 4, 5, 6, 7, 8],
            6: [0, 5],
            7: [0, 2, 3, 4, 5, 7, 8],
            8: [0, 7],
            9: [0, 1, 2, 3, 5, 6, 7, 8, 9]
            ])
        maze1.start = (4, 9)
        maze1.end = (0, 0)
        maze1.startFacing = .north
        mazeArray.append(maze1)
        
        let maze2 = Maze(dictionary: [
            0: [3, 7],
            1: [1, 3, 5, 7, 9],
            3: [0, 1, 3, 5, 6, 7, 8, 9],
            4: [3],
            5: [1, 3, 5, 7, 9],
            7: [0, 1, 3, 4, 5, 7, 9],
            8: [7],
            9: [1, 2, 3, 4, 5, 6, 7, 8, 9]
            ])
        maze2.start = (0, 9)
        maze2.end = (9, 0)
        maze2.startFacing = .north
        mazeArray.append(maze2)
        
        let maze3 = Maze(dictionary: [
            0: [3, 4, 5, 6, 7],
            1: [1, 3, 9],
            2: [1, 3, 6, 8, 9],
            3: [1, 3, 4, 6],
            4: [6],
            5: [1],
            6: [1, 2, 3, 4, 5, 6, 7, 8, 9],
            7: [3, 7],
            9: [3, 7]
            ])
        maze3.start = (5, 8)
        maze3.end = (9, 0)
        maze3.startFacing = .north
        mazeArray.append(maze3)
        
        let maze4 = Maze(dictionary: [
            1: [1, 2, 4, 6, 7, 9],
            2: [1, 7, 9],
            3: [3, 5, 9],
            4: [1, 5, 7, 9],
            5: [3, 4, 5, 7, 9],
            6: [1, 9],
            7: [1, 2, 4, 5, 7, 9],
            9: [0, 1, 2, 3, 4, 5, 6, 7]
            ])
        maze4.start = (9, 9)
        maze4.end = (4, 4)
        maze4.startFacing = .north
        mazeArray.append(maze4)
    }
}
