//
//  ContentView.swift
//  IntervalTimer
//
//  Created by Heather Mason on 6/6/20.
//  Copyright © 2020 Heather Mason. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var secondsRemaining = 62
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    
    var body: some View {
        Text(secondsToHoursMinutesSeconds(seconds: secondsRemaining))
            .font(.system(size: 80))
            .onReceive(timer) { _ in
                if self.secondsRemaining > 0 {
                    self.secondsRemaining -= 1
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
