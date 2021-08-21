//
//  TabListView.swift
//  shotclock
//
//  Created by Noah Kim on 8/20/21.
//  Copyright © 2021 Noah Kim. All rights reserved.
//

import SwiftUI

struct TabListView: View {
    private var selection: Optional<Tab> = nil
    private let tabs: Array<Tab> = []
    
    var body: some View {
        List(tabs, id: \.self) { item in
            Text("asdf")
        }
            .navigationBarTitle(Text("Open Tabs"))
            .navigationBarItems(trailing: NavigationLink(destination: TabFormView()) {
                Text("New")
            })
    }
}

struct TabListView_Previews: PreviewProvider {
    static var previews: some View {
        TabListView()
    }
}
