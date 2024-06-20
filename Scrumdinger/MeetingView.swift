//
//  ContentView.swift
//  Scrumdinger
//
//  Created by Zihao Wang on 2024-06-16.
//

import SwiftUI

///Shows the meeting view and the duration each speaker has
struct MeetingView: View {
    var body: some View {
        VStack {
            ProgressView(value: 10, total: 15)
            HStack {
                VStack (alignment: .leading) {
                    Label("300", systemImage: "hourglass.tophalf.fill")
                        .labelStyle(.trailingIcon(
                            labelDescriptor: "Time Elapsed",
                            alignment: .leading
                        ))
                }
                Spacer()
                VStack (alignment: .trailing) {
                    Label("600", systemImage: "hourglass.tophalf.fill")
                        .labelStyle(.trailingIcon(
                            labelDescriptor: "Seconds Remaining",
                            alignment: .trailing
                        ))
                }
            }
            .accessibilityElement(children: .ignore)
            .accessibilityLabel("Time Remaining")
            .accessibilityValue("10 Minutes")
            Circle()
                .strokeBorder(lineWidth: 24)
            HStack {
                Text("Speaker 1 of 3")
                Spacer()
                Button(action: {}) {
                    Image(systemName: "forward.fill")
                        .foregroundColor(.black)
                }.accessibilityLabel("Next Speaker")
            }
        }
        .padding()
    }
}

#Preview {
    MeetingView()
}
