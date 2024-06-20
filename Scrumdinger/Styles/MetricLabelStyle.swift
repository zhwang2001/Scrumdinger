//
//  TrailingIconLabelStyle.swift
//  Scrumdinger
//
//  Created by Zihao Wang on 2024-06-20.
//

import SwiftUI

struct MetricLabelStyle: LabelStyle {
    
    var description: String?
    var alignment: HorizontalAlignment
    
    func makeBody(configuration: Configuration) -> some View {
        VStack (alignment: alignment) {
            if let description = description {
                Text(description)
                    .font(.caption)
            }
            HStack {
                configuration.title
                configuration.icon
            }
        }
        .padding(5)
    }
}

extension LabelStyle where Self == MetricLabelStyle {
    /**
     Styling for all metric labels. Comprised of a descriptor title and an Icon Label. Called within the labelStyle modifier, dependent on the MetricLabelStyle constructor
     - Parameters:
        - labelDescriptor: Optional description of the label. `String`
        - alignment: Either .trailing, .leading or .center. `HorizontalAlignment`
     
     ```swift
    .labelStyle(trailingIcon(
        labelDescriptor: "Time Remaining",
        alignment: ".leading"
     ))
     ```
     */
    static func trailingIcon(labelDescriptor: String? = nil, alignment: HorizontalAlignment) -> Self {
        Self(description: labelDescriptor, alignment: alignment)
    }
}
