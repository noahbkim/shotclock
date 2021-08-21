//
//  ContentView.swift
//  shotclock
//
//  Created by Noah Kim on 8/20/21.
//  Copyright © 2021 Noah Kim. All rights reserved.
//

import SwiftUI

struct ContentView: View {    
    var body: some View {
        NavigationView {
            TabListView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
