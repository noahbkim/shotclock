//
//  ProfileFormView.swift
//  shotclock
//
//  Created by Noah Kim on 8/20/21.
//  Copyright © 2021 Noah Kim. All rights reserved.
//

import SwiftUI
import Combine

struct ProfileFormView: View {
    @State private var name: String = ""
    @State private var about: String = ""
    @State private var birthday: Date = Date()
    @State private var sex: String = "male"
    @State private var height: ImperialValue = ImperialValue(5, 9)
    @State private var weight: Float = 150
    
    private var WEIGHTS: Array<Int> = (0...20).map({ i in 100 + 10 * i })
    
    var body: some View {
        Form {
            Section(header: Text("ABOUT")) {
                TextField("Name", text: $name)
                TextField("Description", text: $about)
            }
            Section(header: Text("BIOMETRICS")) {
                DatePicker("Birthday", selection: $birthday, displayedComponents: [DatePickerComponents.date])
                Picker("Metabolism profile", selection: $sex) {
                    Text("Male").tag("male")
                    Text("Female").tag("female")
                }
                NavigationLink(destination: HeightView(value: $height)) {
                    HStack {
                        Text("Height")
                        Spacer()
                        Text(self.height.english())
                            .foregroundColor(Color("secondaryLabelColor"))
                            .multilineTextAlignment(.trailing)
                    }
                }
                NavigationLink(destination: WeightView(value: $weight)) {
                    HStack {
                        Text("Weight")
                        Spacer()
                        Text("\(self.weight.toStringSane()) lbs")
                            .foregroundColor(Color("secondaryLabelColor"))
                            .multilineTextAlignment(.trailing)
                    }
                }
            }
        }
            .navigationBarTitle("New Tab")
    }
}

struct ProfileFormView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileFormView()
    }
}
