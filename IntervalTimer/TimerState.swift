//
//  TimerState.swift
//  IntervalTimer
//
//  Created by Heather Mason on 6/16/20.
//  Copyright © 2020 Heather Mason. All rights reserved.
//

import SwiftUI

func secondsToHoursMinutesSeconds(seconds: Int) -> String {
    let hours = "\(seconds / 3600)"
    let minutes = "\((seconds % 3600) / 60)"
    let seconds = "\((seconds % 3600) % 60)"
    let minutesPadded = minutes.count > 1 ? minutes : "0" + minutes
    let secondsPadded = seconds.count > 1 ? seconds : "0" + seconds
    
    return "\(hours):\(minutesPadded):\(secondsPadded)"
}
