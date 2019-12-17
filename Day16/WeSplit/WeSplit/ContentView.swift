//
//  ContentView.swift
//  WeSplit
//
//  Created by 曹琴 on 2019/12/16.
//  Copyright © 2019 csike. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var checkAmount = ""
    @State private var numberOfPeople = ""
    @State private var tipPercentage = 2
    let tipPercentages = [10, 15, 20, 25, 0]
    
    var numberOfPeopleCnt: Double {
        return Double(numberOfPeople) ?? 0
    }
    
    var peopleCount: Double {
        return Double(numberOfPeopleCnt + 2)
    }
    
    var tipSelection: Double {
        return Double(tipPercentages[tipPercentage])
    }
    
    var orderAmount: Double {
        return Double(checkAmount) ?? 0
    }
    
    var tipValue: Double {
        return (orderAmount / 100 * tipSelection)
    }
    
    var grandTotal: Double {
        return (orderAmount + tipValue)
    }
    
    var totalPerPerson: Double {
        return (grandTotal / peopleCount)
    }
    
    var body: some View {
        NavigationView {
            Form {
                Section {
                    TextField("Amount", text: $checkAmount)
//                        .keyboardType(.decimalPad)
                    
//                    Picker("Number of people", selection: $numberOfPeople) {
//                        ForEach(2..<100) {
//                            Text("\($0) people")
//                        }
//                    }
                    TextField("Number of people, default is 2", text: $numberOfPeople)
                        .keyboardType(.decimalPad)
                }
                
                Section(header: Text("Total Amount")) {
                    Text("Total Amount \(grandTotal, specifier: "%.2f")")
                }
                
                Section(header: Text("Amount per Person")) {
                    Text("$\(totalPerPerson, specifier: "%.2f")")
                }
                
                Section(header:Text("How much tip do you want to leave?")) {
                    
                    Picker("Tip percentage", selection: $tipPercentage) {
                        ForEach(0..<tipPercentages.count) {
                            Text("\(self.tipPercentages[$0])%")
                        }
                    }
                }.pickerStyle(SegmentedPickerStyle())
            }.navigationBarTitle("WeSplit")
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
