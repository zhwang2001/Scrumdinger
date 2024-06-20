//
//  CardView.swift
//  Scrumdinger
//
//  Created by Zihao Wang on 2024-06-17.
//

import Foundation
import SwiftUI

struct CardView: View {
    let scrum: DailyScrum
    var body: some View {
        VStack (alignment: .leading) {
            Text(scrum.title)
                .font(.headline)
                .accessibilityAddTraits(.isHeader)
            HStack {
                Label(String(scrum.attendees.count), systemImage: "person.3")
                    .labelStyle(.trailingIcon(
                        alignment: .center
                    ))
                    .accessibilityLabel("Number of Attendees")
                    .accessibilityValue("\(scrum.attendees.count) Attendees")
                Spacer()
                Label(String(scrum.lengthInMinutes), systemImage: "clock")
                    .labelStyle(.trailingIcon(
                        alignment: .center
                    ))
                    .accessibilityLabel("Meeting Duration")
                    .accessibilityValue("\(scrum.lengthInMinutes) Minutes")
            }
            .font(.caption)
        }
        .padding()
        //.foregroundStyle(scrum.theme.accentColor)
    }
}

struct CardView_Previews: PreviewProvider {
    static var scrum = DailyScrum.sampleData[0]
    static var previews: some View {
        CardView(scrum: scrum)
            .background(scrum.theme.mainColor)
            .previewLayout(.fixed(width: 400, height: 400))
        
    }
}
