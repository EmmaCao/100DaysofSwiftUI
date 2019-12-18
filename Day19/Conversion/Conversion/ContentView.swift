//
//  ContentView.swift
//  Conversion
//
//  Created by 曹琴 on 2019/12/18.
//  Copyright © 2019 csike. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    let temperature = ["Celsius","Fahrenheit","Kelvin"]
    @State private var selectedTempInput = 0;
    @State private var selectedTempOutput = 0;
    @State private var tempInput = ""
    var convertedTemp: Double {
        let tempInputDouble = Double(tempInput) ?? 0
        var tempOutput = tempInputDouble
        if selectedTempInput == 0 {
            switch selectedTempOutput {
            case 1:
                tempOutput = tempInputDouble * 9/5 + 32
            case 2:
                tempOutput = tempInputDouble + 273.15
            default:
                tempOutput = tempInputDouble
            }
        }
        else if selectedTempInput == 1 {
            switch selectedTempOutput {
            case 0:
                tempOutput = (tempInputDouble - 32)*5/9
            case 2:
                tempOutput = (tempInputDouble + 459.67)*5/9
            default:
                tempOutput = tempInputDouble
            }
        }
        else {
            switch selectedTempOutput {
            case 0:
                tempOutput = tempInputDouble - 273.15
            case 1:
                tempOutput = tempInputDouble*9/5 - 459.67
            default:
                tempOutput = tempInputDouble
            }
        }
        return tempOutput
    }
    
    let length = ["meters","kilometers","feet","yards","miles"]
    let lenRate = [
        [1,         0.001,  3.2808,     1.0936,     0.0006],
        [1000,      1,      3280.8399,  1093.6133,  0.6214],
        [0.3048,    0.0003, 1,          0.3333,     0.0002],
        [0.9144,    0.0009, 3,          1,          0.0006],
        [1609.344,  1.6093, 5280,       1760,       1],
    ]
    @State private var selectedLenInput = 0;
    @State private var selectedLenOutput = 0;
    @State private var lenInput = ""
    
    var convertedLength: Double {
        let lenInputDouble = Double(lenInput) ?? 0
        let lenOutput = lenInputDouble * lenRate[selectedLenInput][selectedLenOutput]
        return lenOutput
    }
    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Temperature conversion")) {
                    TextField("Enter a value", text: $tempInput)
                        .keyboardType(.numbersAndPunctuation)
                    Picker("Input Unit", selection: $selectedTempInput ) {
                        ForEach(0..<temperature.count) {
                            Text(self.temperature[$0])
                        }
                    }.pickerStyle(SegmentedPickerStyle())
                    Text("=")
                    Text("\(convertedTemp, specifier: "%.2f")")
                    Picker("Output Unit", selection: $selectedTempOutput ) {
                        ForEach(0..<temperature.count) {
                            Text(self.temperature[$0])
                        }
                    }.pickerStyle(SegmentedPickerStyle())
                }
                Section(header: Text("Length conversion")) {
                    TextField("Enter a value", text: $lenInput)
                        .keyboardType(.numbersAndPunctuation)
                    Picker("Input Unit", selection: $selectedLenInput ) {
                        ForEach(0..<length.count) {
                            Text(self.length[$0])
                        }
                    }.pickerStyle(SegmentedPickerStyle())
                    Text("=")
                    Text("\(convertedLength)")
                    Picker("Output Unit", selection: $selectedLenOutput ) {
                        ForEach(0..<length.count) {
                            Text(self.length[$0])
                        }
                    }.pickerStyle(SegmentedPickerStyle())
                }
            }.navigationBarTitle("Convertion")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
