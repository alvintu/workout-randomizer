//
//  ContentView.swift
//  workout-randomizer
//
//  Created by Alvin Tu on 4/19/22.
//

import SwiftUI

struct ContentView: View {
	let swimWorkouts = ["100 yard freestyle", "100 yard freestyle", "100 yard freestyle swim"]
	@State var workout = ""
    var body: some View {
		Text(workout)
            .padding()
		
		Button {
				workout = generateWorkout()

			
		} label: {
			Text("generate lap")
		}

    }
	
	func generateWorkout() -> String {
		return swimWorkouts.randomElement() ?? ""
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
