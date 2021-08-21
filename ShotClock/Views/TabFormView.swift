//
//  TabAddView.swift
//  shotclock
//
//  Created by Noah Kim on 8/20/21.
//  Copyright © 2021 Noah Kim. All rights reserved.
//

import SwiftUI


struct TabFormView: View {
    @State var profile: Optional<Int> = nil
    let PROFILES: Array<Profile> = []

    var body: some View {
        Form {
            Section(header: Text("PROFILE")) {
                Picker(selection: $profile, label: Text("Profile")) {
//                    ForEach(PROFILES) { profile in
//                        Text(profile.name).tag()
//                    }
                    Text("No profiles available").tag(nil as Int?)
                }
                NavigationLink(destination: ProfileListView()) {
                    Text("Manage profiles")
                }
            }
        }
            .navigationBarTitle("New Tab")
    }
}

struct TabAddView_Previews: PreviewProvider {
    static var previews: some View {
        TabFormView()
    }
}
