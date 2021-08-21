//
//  ImperialField.swift
//  ShotClock
//
//  Created by Noah Kim on 8/20/21.
//  Copyright © 2021 Noah Kim. All rights reserved.
//

import SwiftUI

struct ImperialValue {
    public var feet: Int
    public var inches: Int
    
    public init(_ feet: Int, _ inches: Int) {
        self.feet = feet
        self.inches = inches
        
        if self.inches >= 12 {
            self.feet += self.inches / 12
            self.inches %= 12
        } else if self.inches < 0 {
            self.feet += self.inches / 12
            self.inches = 12 + self.inches % 12
        }
    }
    
    public init(_ inches: Int) {
        self.feet = inches / 12
        self.inches = inches % 12
    }
    
    public func english() -> String {
        return "\(self.feet)' \(self.inches)\""
    }
    
    public func asInches() -> Int {
        return self.feet * 12 + self.inches
    }
    
    public func increment() -> ImperialValue {
        return ImperialValue(self.asInches() + 1)
    }
    
    public func decrement() -> ImperialValue {
        return ImperialValue(max(self.asInches() - 1, 0))
    }
}

struct HeightView: View {
    @Binding public var value: ImperialValue

    private func onIncrement() {
        self.value = value.increment()
    }
    
    private func onDecrement() {
        self.value = value.decrement()
    }
    
    var body: some View {
        Form {
            Stepper(onIncrement: self.onIncrement, onDecrement: self.onDecrement) {
                Text(self.value.english())
            }
            HStack {
                Text("Unit")
                Spacer()
                Text("feet")
                    .foregroundColor(Color("secondaryLabelColor"))
                    .multilineTextAlignment(.trailing)
            }
        }
    }
}

struct HeightView_Previews: PreviewProvider {
    static var previews: some View {
        HeightView(value: .constant(ImperialValue(0, 0)))
    }
}
