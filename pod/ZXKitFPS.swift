//
//  ZXKitFPS.swift
//  ZXKitFPS
//
//  Created by Damon on 2021/4/27.
//

import Foundation
import UIKit

open class ZXKitFPS {
    private var displayLink: CADisplayLink?     //fps显示
    private var lastTime: TimeInterval = 0
    private var count = 0
    private var complete: ((Int) -> Void)?

    public init() {

    }

    public func start(success: ((Int) -> Void)?) {
        self.complete = success
        self.displayLink = CADisplayLink(target: self, selector: #selector(tick(link:)))
        self.displayLink?.add(to: RunLoop.main, forMode: .common)
    }

    public func stop() {
        self.displayLink?.invalidate()
    }
}

private extension ZXKitFPS {
    @objc func tick(link: CADisplayLink) {
        guard lastTime != 0 else {
            lastTime = link.timestamp
            return
        }
        count = count + 1
        let delta = link.timestamp - lastTime
        guard delta >= 1 else { return }
        lastTime = link.timestamp
        let fps = round(Double(count) / delta)
        count = 0
        if let complete = complete {
            complete(Int(fps))
        }
    }
}
