//
//  ContentView.swift
//  BetterRest
//
//  Created by 曹琴 on 2019/12/27.
//  Copyright © 2019 csike. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var sleepAmount = 8.0
    @State private var coffeeAmount = 1
    
    @State private var alertTitle = ""
    @State private var alertMessage = ""
    @State private var showingAlert = false
    
    static var defaultWakeTime: Date {
        var components = DateComponents()
        components.hour = 7
        components.minute = 0
        return Calendar.current.date(from: components) ?? Date()
    }
    
    @State private var wakeUp = defaultWakeTime
    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("When do you want to wake up?")) {
                    DatePicker("Please enter a time", selection: $wakeUp, displayedComponents: .hourAndMinute)
                        .labelsHidden()
                        .datePickerStyle(WheelDatePickerStyle())
                }
            
//                VStack(alignment: .leading, spacing: 0) {
//                    Text("Desired amount of sleep")
//                        .font(.headline)
//
//                    Stepper(value: $sleepAmount, in: 4...12, step: 0.25) {
//                        Text("\(sleepAmount, specifier: "%g") hours")
//                    }
//                }
                Section(header: Text("Desired amount of sleep")) {
                    Stepper(value: $sleepAmount, in: 4...12, step: 0.25) {
                        Text("\(sleepAmount, specifier: "%g") hours")
                    }
                }
                
//                VStack(alignment: .leading, spacing: 0) {
//                    Text("Daily coffee intake")
//                        .font(.headline)
//                    Stepper(value: $coffeeAmount, in: 1...20) {
//                        if coffeeAmount == 1 {
//                            Text("1 cup")
//                        } else {
//                            Text("\(coffeeAmount) cups")
//                        }
//                    }
//                }
                Section(header: Text("Daily coffee intake")) {
                    Picker(selection: $coffeeAmount, label: Text("Daily coffee intake")) {
                        ForEach(0 ... 20, id:\.self){
                            Text("\($0) cup\($0 == 1 ? "" : "s")")
                        }
                    }
                }
                
                Text("Your ideal bedtime")
                    .font(.caption)
                    .foregroundColor(.secondary)
                Text(calculateBedtime())
                    .font(.largeTitle)
            }
            .navigationBarTitle("BetterRest")
//            .navigationBarItems(trailing:
//                Button(action: calculateBedtime) {
//                    Text("Calculate")
//                }
//            )
//                .alert(isPresented: $showingAlert) {
//                    Alert(title: Text(alertTitle), message: Text(alertMessage), dismissButton: .default(Text("OK")))
//            }
        }
    }
    
    func calculateBedtime() -> String {
        let model = SleepCalculator()
        
        let components = Calendar.current.dateComponents([.hour, .minute], from: wakeUp)
        let hour = (components.hour ?? 0) * 60 * 60
        let minute = (components.minute ?? 0) * 60
        
        var bedTime: String
        
        do {
            let prediction = try model.prediction(wake: Double(hour+minute), estimatedSleep: sleepAmount, coffee: Double(coffeeAmount))
            let sleepTime = wakeUp - prediction.actualSleep
            let formatter = DateFormatter()
            formatter.timeStyle = .short
            
//            alertMessage = formatter.string(from: sleepTime)
//            alertTitle = "Your ideal bedtime is ..."
            bedTime = formatter.string(from: sleepTime)
        } catch {
//            alertTitle = "Error"
//            alertMessage = "Sorry, there was a problem calculating your bedtime."
            bedTime = "Sorry, there was a problem calculating your bedtime."
        }
//        showingAlert = true
        return bedTime
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
