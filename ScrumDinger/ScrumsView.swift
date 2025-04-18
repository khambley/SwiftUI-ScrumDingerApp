//
//  ScrumsView.swift
//  ScrumDinger
//
//  Created by Katherine Hambley on 4/16/25.
//

import SwiftUI

struct ScrumsView: View {
    let scrums: [DailyScrum]
    var body: some View {
        NavigationStack {
            List(scrums) { scrum in
                
                NavigationLink(destination: DetailView(scrum: scrum)) {
                    CardView(scrum: scrum)
                }
                .listRowBackground(scrum.theme.mainColor)
            }
            .navigationTitle("Daily Meetings")
            .toolbar {
                Button(action: {}) {
                    Image(systemName: "plus")
                }
                .accessibilityLabel("New Meeting")
            }
        }
    }
}

#Preview {
    ScrumsView(scrums: DailyScrum.sampleData)
}
