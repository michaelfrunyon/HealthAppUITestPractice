//
//  ContentView.swift
//  HealthAppTests
//
//  Created by Michael Runyon on 5/9/25.
//

import SwiftUI

struct ContentView: View {
    
    @State private var name: String = ""
    @State private var yearsAsTester: String = ""
    @State private var submitted = false
    
    var body: some View {
        VStack {
            Image(systemName: "ladybug.circle")
                .resizable()
                .scaledToFit()
                .frame(width: 100, height: 100)
                .foregroundColor(.black)
                .background(.red)
                .clipShape(Circle()).shadow(radius: 5)
            Text("Let's test the Health App UI")
                .padding(.top)
                .font(.title2)
                .fontWeight(.semibold)
                .foregroundColor(.primary)
            Text("Press Home")
                .padding(.top, 5)
                .font(.title3)
                .fontWeight(.semibold)
            
            
            // Input fields
            TextField("Enter your name", text: $name)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding(.horizontal)
            
            TextField("How many years have you been a tester?", text: $yearsAsTester)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding(.horizontal)
                .keyboardType(.numberPad)
            
            // Button that prints the input
            Button("Submit") {
                submitted = true
            }
            
            .buttonStyle(BorderedProminentButtonStyle())
            
            if submitted {
                Text("Hello, \(name)! You have been testing for \(yearsAsTester) years.  Nice job!")
                    .font(.headline)
                    .foregroundColor(.green)
                    .padding(.top)
                    .multilineTextAlignment(.center)
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
