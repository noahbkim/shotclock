//
//  WeightView.swift
//  ShotClock
//
//  Created by Noah Kim on 8/20/21.
//  Copyright © 2021 Noah Kim. All rights reserved.
//

import SwiftUI

struct WeightView: View {
    @Binding public var value: Float
    @State private var text: String = ""
    
    var body: some View {
        Form {
            TextField(
                "Weight",
                text: $text,
                onEditingChanged: { isEditing in
                    if !isEditing {
                        self.value = Float.fromStringSane(self.text)
                        self.text = self.value.toStringSane()
                    }
                }
            )
                .keyboardType(.numberPad)
                .onAppear { self.text = self.value.toStringSane() }
            
            HStack {
                Text("Unit")
                Spacer()
                Text("lbs")
                    .foregroundColor(Color("secondaryLabelColor"))
                    .multilineTextAlignment(.trailing)
            }
        }
    }
}

struct WeightView_Previews: PreviewProvider {
    static var previews: some View {
        WeightView(value: .constant(150))
    }
}
