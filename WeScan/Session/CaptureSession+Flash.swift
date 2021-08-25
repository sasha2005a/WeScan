//
//  CaptureSession+Flash.swift
//  WeScan
//
//  Created by Julian Schiavo on 28/11/2018.
//  Copyright © 2018 WeTransfer. All rights reserved.
//

import Foundation
import AVFoundation

/// Extension to CaptureSession to manage the device flashlight
extension CaptureSession {
    /// The possible states that the current device's flashlight can be in
    enum FlashState {
        case on
        case off
        case auto
        case unavailable
        case unknown
    }
    
    /// Toggles the current device's flashlight on or off.
    func toggleFlash(current: AVCaptureDevice.FlashMode) -> AVCaptureDevice.FlashMode? {
        if current == .on {
         //   device.flashMode = .auto
            return .auto
        } else if current == .off {
           // device.flashMode = .on
            return .on
        } else if current == .auto {
            //device.flashMode = .off
            return .off
        }
        
        return nil
    }
}
