//
//  GyroManager.swift
//  gyro
//
//  Created by Integro on 10/04/17.
//  Copyright © 2017 nextu. All rights reserved.
//

import CoreMotion

class GyroManager {
    static let instance = GyroManager()
    private var manager = CMMotionManager()
    private init() {}
    
    func start(updateHandler: @escaping (CMGyroData?, Error?) -> Void) {
        if manager.isGyroAvailable {
            manager.gyroUpdateInterval = 0.1
            manager.startGyroUpdates(to: OperationQueue.main, withHandler: { (data, error) in
                updateHandler(data, error)
            })
        }
    }
}
