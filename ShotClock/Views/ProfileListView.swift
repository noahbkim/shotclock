//
//  ProfileListView.swift
//  shotclock
//
//  Created by Noah Kim on 8/20/21.
//  Copyright © 2021 Noah Kim. All rights reserved.
//

import SwiftUI
import CoreData

struct ProfileListView: View {
    @Environment(\.managedObjectContext) private var viewContext
    @FetchRequest(entity: Profile.entity(), sortDescriptors: []) var profiles: FetchedResults<Profile>

    var body: some View {
        List(profiles, id: \.self) { item in
            Text(item.name)
        }
            .navigationBarTitle(Text("Profiles"))
            .navigationBarItems(trailing: NavigationLink(destination: ProfileFormView()) {
                Text("New")
            })
    }
}

struct ProfileListView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileListView()
    }
}
