//
//  ContentView.swift
//  workout-randomizer
//
//  Created by Alvin Tu on 4/19/22.
//

import SwiftUI

struct ContentView: View {
	let swimWorkouts = ["butterfly kick", "freestyle kick", "breaststroke kick", "backstroke kick", "freestyle", "butterfly", "breaststroke ", "backstroke", "one-arm butterfly", "catch-up freestyle", "super slow freestyle - focus on form", "overkick freestyle drill", "finger drag freestyle drill", "treading 5 min", "treading 2 mins - 1 hand up", "treading 1 min - no hand", "2-2-2 butterfly drill", "Head-Lead Body Dolphin butterfly drill", "kick on back - hands to side backstroke drill", "Head Above Water breaststroke", "breaststroke arms with dolphin kicks", "double arm pull backstroke", "choice - 1 lap", "choice - 2 laps"]
	@State var workout = ""
	@State var array: [String] = []

    var body: some View {
		Image(generateImageNameFor(workout))
			.frame(width: .infinity, height: 300, alignment: .center)
			.clipped()
		Text(workout)
            .padding()
		
		Button {
			withAnimation {
			workout = generateWorkout(workout: workout)
			}

		} label: {
			Text("generate lap")
		}

    }
	
	func generateImageNameFor(_ workout: String) -> String {
		if workout.contains("freestyle") {
			return "freestyle"
		}
		
		if workout.contains("breaststroke") {
			return "breaststroke"
		}
		if workout.contains("butterfly") {
			return "butterfly"
		}
		if workout.contains("backstroke") {
			return "backstroke"
		}
		
		if workout.contains("treading") {
			return "treading"
		}
		
		if workout.contains("choice") {
			return "choice"
		}
		return ""
		}
	
	
	func generateWorkout(workout: String) -> String {
		array = swimWorkouts.filter { $0 != workout }
		return array.randomElement() ?? ""
	}
}
	

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



//problem is- sometimes it's hard to think about what instructors should do next in a swim workout
//sometimes - programs are mundane, so 2 goals that this code should search
//fun,randomization, with a good workout
//in the future, it can levels and different sports but for now, just a base layer
// of swimming workous that present through randomization.
