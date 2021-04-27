//
//  ZXKitFPS+zxkit.swift
//  ZXKitFPS
//
//  Created by Damon on 2021/4/27.
//

import Foundation
import ZXKitCore

func UIImageHDBoundle(named: String?) -> UIImage? {
    guard let name = named else { return nil }
    guard let bundlePath = Bundle(for: ZXKitFPS.self).path(forResource: "ZXKitFPS", ofType: "bundle") else { return nil }
    let bundle = Bundle(path: bundlePath)
    return UIImage(named: name, in: bundle, compatibleWith: nil)
}

//ZXKitPlugin
extension ZXKitFPS: ZXKitPluginProtocol {
    public var pluginIcon: UIImage? {
        return UIImageHDBoundle(named: "logo")
    }

    public var pluginTitle: String {
        return NSLocalizedString("Logger", comment: "")
    }

    public var pluginType: ZXKitPluginType {
        return .data
    }

    public func start() {
        if self.isRunning {
            self.stop()
            ZXKit
        } else {

        }
        self.start { [weak self] (fps) in
            guard let self = self else { return }
            DispatchQueue.main.async {
                if self.isRunning {
                    self.mWindow?.mFloatButton?.setTitle("\(fps)FPS", for: UIControl.State.normal)
                    self.mWindow?.mFloatButton?.titleLabel?.font = UIFont.systemFont(ofSize: 13, weight: .bold)
                    if fps >= 55 {
                        self.mWindow?.mFloatButton?.backgroundColor = UIColor.zx.color(hexValue: 0x5dae8b)
                    } else if (fps >= 50 && fps < 55) {
                        self.mWindow?.mFloatButton?.backgroundColor = UIColor.zx.color(hexValue: 0xf0a500)
                    } else {
                        self.mWindow?.mFloatButton?.backgroundColor = UIColor.zx.color(hexValue: 0xaa2b1d)
                    }
                } else {
                    self.mWindow?.mFloatButton?.titleLabel?.font = UIFont.systemFont(ofSize: 23, weight: .bold)
                    self.mWindow?.mFloatButton?.backgroundColor = UIColor.zx.color(hexValue: 0x5dae8b)
                    self.mWindow?.mFloatButton?.setTitle(NSLocalizedString("H", comment: ""), for: UIControl.State.normal)
                }
            }
        }
    }
}
