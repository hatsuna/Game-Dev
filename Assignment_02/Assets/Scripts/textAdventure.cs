using UnityEngine;
using System.Collections;
using UnityEngine.UI;

/*
 * Matthew Pon
 * NYU Fall 2015
 * Game Dev Studio
 */


public class textAdventure : MonoBehaviour {

	string currentRoom = "?"; // remembers the current location in the world
	bool hasPhone = false; // alarm is off, can see the time
	bool cat_fed = false; // can fake death
	bool drank_coffee = false; // can dodge highway accident, office bathroom death
	bool boss_pissed = false; // parking lot, change ending
	int lactase_pills_eaten = 0; // avoids office bathroom death
	int minutesElapsed = 0;
	int start_time = 300; // Time player starts at in minutes
	int end_time = 420;// Time player must finish in minutes
	int smallTimeStep = 5; // timesteps used for balancing purposes against late clock
	int medTimeStep = 15; 
	int largeTimeStep = 30; 
	string AMorPM = "AM";// hardcoded starts AM, hits PM after 11, doesnt go back to AM,

	// Use this for initialization
	void Start () {
	}

	string convertTime(int timeElapsedInMinutes) {
		int hours = (timeElapsedInMinutes / 60);
		if (hours >= 12){
			AMorPM = "PM";
			if( hours > 12)
				hours = hours % 12;
		}
		int minutes = timeElapsedInMinutes % 60;
		string clockFormat = "";
		if (hours < 10)
			clockFormat = "0" + hours.ToString() + ":";
		else
			clockFormat = hours.ToString() + ":";
		if (minutes < 10)
			clockFormat += "0" + minutes.ToString() + " " + AMorPM;
		else
			clockFormat += minutes.ToString() + " " + AMorPM;
		// TODO take current number of minutes elapsed
		// convert to Clock Time
		return clockFormat;
	}

	// Update is called once per frame
	void Update () {
		//restart
		if (Input.GetKeyDown (KeyCode.Space)) {  
				Application.LoadLevel (0);  
		}  


		// if I declare a variable inside Update(),
		// then I can ONLY use this variable inside Update() !!
		// also, a "buffer" IS A STAGING AREA TO PRAPARE DATA
		string textBuffer = "";
		if (hasPhone){
			textBuffer += convertTime(start_time + minutesElapsed) + "\n";
		}

		if (currentRoom == "?"){
			textBuffer += "LATE TO WORK: a game by matt\n\n";
		}

		textBuffer += "Location : " + currentRoom + "\n";
		 
		Debug.Log (currentRoom);

		switch (currentRoom){
		//Intro
		/*case "??":
			textBuffer += "LATE TO WORK" +
				"\n\na game by matt" +
					"\npress [Q] to start";
			if (Input.GetKeyDown (KeyCode.Q)){
				currentRoom = "?";
			}
			break;*/
		//Bedroom
		case "Bedroom":
			if (!hasPhone){
				textBuffer += "\nThe phone is still vibrating."+
					"\nWhere the fuck is it?\n";
			} else {
				textBuffer += "\nYou feel like you're still missing something.";
				textBuffer += "\nCheck-\n";
			}
			
			textBuffer += "\n[Q] I don't have time for this, I need to get to work (Downstairs)";
			if (Input.GetKeyDown (KeyCode.Q)) {
				currentRoom = "Downstairs";
				minutesElapsed += medTimeStep;
			}
			if ( lactase_pills_eaten == 0){
				if (Input.GetKeyDown ( KeyCode.W)){
					currentRoom = "Pillow";
					minutesElapsed += smallTimeStep;
				}
				textBuffer += "\n[W] Under my pillow";
			}
			if (!hasPhone){
				textBuffer += "\n[E] Under my bed";
				if (Input.GetKeyDown (KeyCode.E)){
					currentRoom = "Bed";
					minutesElapsed += smallTimeStep;
				}
			}
			textBuffer += "\n[R] On my nighttable. Obviously.";
			if (Input.GetKeyDown (KeyCode.R)){
				currentRoom = "Nighttable";
				minutesElapsed += smallTimeStep;
			} 
			break;
		//Bedroom sub-rooms
		case "?":
			textBuffer += "\nAnnoying vibrations stir you awake. " +
				"It should be around " + convertTime(start_time) + ". " +
				"You need to be at the office by " + convertTime(end_time) + ". " +
				"Exhausted, you push back the sheets and sit up.";
			goto case "Bedroom";
		case "Pillow":
			textBuffer += "\nFor some reason, you had some lactase pills under your pillow. " +
				"You eat them just in case.";
			lactase_pills_eaten = 1;
			goto case "Bedroom";
		case "Bed":
			textBuffer +="\nYour phone is under the bed, vibrating away. " +
				"Scrambling to complete the puzzle to shut off the alarm, you are finally greeted with some peace and quiet. " +
				"You slip your phone into your pocket. " +
				"This might be useful later.";
			hasPhone = true;
			goto case "Bedroom";
		case "Nighttable":
			textBuffer +="\nObviously not smartass. Because there's nothing here.";
			goto case "Bedroom";

		//Downstairs
		case "Downstairs":
			textBuffer += "\nYou tiptoe down the steps, hoping you don't wake your dad. " +
				"As you step into the kitchen, you realize there's no coffee left. " +
				"Your head is already starting to ache from caffeine withdrawl. " +
					"You NEED your morning coffee.\n";
			goto case "Downstairs rooms";

		//Downstairs sub-rooms
		case "Downstairs rooms":
			
			textBuffer += "\n[Q] COFFEE (Leave the house)";
			textBuffer += "\n[W] I'M GOING BACK TO SLEEP";
			textBuffer += "\n[E] RAWR EXERCISE";
			if (!cat_fed)
			    textBuffer += "\n[R] WHERE IS MY CAT";

			if (Input.GetKeyDown (KeyCode.Q)) { // if player pushes W...
				currentRoom = "Garage";
				minutesElapsed += medTimeStep;
			} else if (Input.GetKeyDown ( KeyCode.W)) {
				currentRoom = "Bedroom";
				minutesElapsed += medTimeStep;
			} else if (Input.GetKeyDown (KeyCode.E)){
				currentRoom = "Living Room";
				minutesElapsed += medTimeStep;
			} else if (Input.GetKeyDown (KeyCode.R)){
				currentRoom = "Kitchen";
				minutesElapsed += smallTimeStep;
			}
			break;
		case "Living Room":
			textBuffer += "\nYou stretch for a bit and do some pushups. " +
				"Yay you. " +
					"Ugh. Need coffee.\n";
			goto case "Downstairs rooms";
		case "Kitchen":
			textBuffer += "\nSkippy is hiding in the sink, playing with drops of water from the faucet. " +
				"You turn on the faucet full-blast and with a yelp, he leaps onto the kitchen floor. " +
				"You fill his bowl with catfood. " +
					"Maybe feeding him will come in handy later. " +
					"You still need coffee.\n";
			cat_fed = true;
			goto case "Downstairs rooms";
		case "Garage":
			textBuffer += "\nYou drag yourself to the car." +
				"\nWhere are your keys?";

			textBuffer += "\n\n[Q] AM I REALLY THIS INCOMPETENT?" +
				"\nTHEY'RE IN MY POCKET.";

			if (Input.GetKeyDown (KeyCode.Q)){
				currentRoom = "Coffee Shop";
				minutesElapsed += medTimeStep;
			}
			break;

		//CoffeeShop
		case "Coffee Shop":
			textBuffer += "\nWith your newfound keys, you speed at a blistering 35 miles per hour to the local coffee shop. " +
				"Morning commuters are already starting to fill the line as you nudge your way to the counter. " +
					"The middle-aged Korean lady who runs the shop sees you step up and smiles. " +
					"You ask for an iced coffee. " +
					"\n'Milk and sugar?' She asks.\n";
			textBuffer += "\n[Q] 'Soymilk and Sugar please, I can't have lactose'";
			textBuffer += "\n[W] 'Cream and Sugar please, I'm in the mood for punishment'";
			textBuffer += "\n[E] 'Black with a little bit of sugar please'";

			if (Input.GetKeyDown (KeyCode.Q) || Input.GetKeyDown (KeyCode.W) || Input.GetKeyDown (KeyCode.E)){
				currentRoom = "Coffee Shop Counter";
				minutesElapsed += smallTimeStep;
			}
			break;
		case "Coffee Shop Counter":
			textBuffer += "\nNodding, she seems to have misheard what you said, pouring a healthy dose of milk into the coffee. " +
				"She hands it to you. " +
				"With your card already out, and her prettiness disorienting you, you find yourself already at the door. " +
					"The milk swirls in the coffee as if taunting you into tasting its creamy deliciousness. " +
					"The line is almost at the door with the shop getting more and more crowded. " +
					"You caffeine deprived brain cries for solace.\n";
			textBuffer += "\n[Q] Drink the coffee and pray";
			textBuffer += "\n[W] Throw the coffee away";
			if(Input.GetKeyDown (KeyCode.Q)){
				drank_coffee = true;
				currentRoom = "Highway";
				minutesElapsed += largeTimeStep;
			} else if( Input.GetKeyDown (KeyCode.W)){
				currentRoom = "Highway";
				minutesElapsed += largeTimeStep;
			}
			break;

		//Highway
		case "Highway":
			textBuffer += "\nYou're on the highway, cruising at a comfortable 45 mph in the left lane, thinking about the wonderful coffee lady. " +
					"Lost in thought, you almost don't see your exit quickly approaching. " +
					"However, you're still in the left lane, and the exit is coming up fast.\n";

			textBuffer += "\n[Q] Good luck everybody else. (EXIT NOW)";
			textBuffer += "\n[W] Scenic route it is then. (MISS EXIT)";
			if(Input.GetKeyDown (KeyCode.Q)){
				currentRoom = "Highway Exit";
				minutesElapsed += smallTimeStep;
			} else if( Input.GetKeyDown (KeyCode.W)){
				currentRoom = "Parking Garage";
				minutesElapsed += largeTimeStep;
			} 
			break;
		
		case "Highway Exit":
			textBuffer += "\nYou attempt to cross all four lanes of traffic. " +
				"As you're about to make it to the exit, you hear a loud horn from behind. " +
				"\nTheres an SUV in your blindspot!"; 
			if(drank_coffee){
				textBuffer += "\nWith your coffee-enhanced senses, you quickly accelerate and dive onto the shoulder. " +
					"Safely out of harms way, the SUV passes you, but not before blaring the horn in your ear.\n";
				textBuffer += "\n[Q] Phew. I guess the coffee was worth it.";
				if(Input.GetKeyDown (KeyCode.Q)){
					currentRoom = "Parking Garage";
					minutesElapsed += medTimeStep;
				}
			} else {
				textBuffer += "\nYour mind numbed without the sweet nectar of caffeine, you're unable to react fast enough to the oncoming car. " +
					"The SUV plows into your rear-end, spinning your car off the road and into the forest below the highway. " +
					"\nYou weren't wearing a seatbelt." +
						"\n\nYOU DIED.\nPress [Space] to reattempt driving 101";
				break;
			}
			break;

		case "Parking Garage":
			textBuffer += "\nYou finally reach the parking garage. " +
				"As you're pulling in looking for spots, the car behind you honks, getting dangerously close to your car. " +
				"The driver swerves back and forth trying to get around. " +
				"Although you can't see the driver, you stand your ground.\n";
			textBuffer += "\n[Q] Drive slower to screw with the car behind you";
			textBuffer += "\n[W] Speed up and park far away";
			textBuffer += "\n[E] Ignore the car and steal the closest spot";
			if(Input.GetKeyDown (KeyCode.Q)){
				currentRoom = "Office";
				boss_pissed = true;
				minutesElapsed += medTimeStep + smallTimeStep;
			} else if( Input.GetKeyDown (KeyCode.W)){
				currentRoom = "Office";
				minutesElapsed += medTimeStep;
			} else if( Input.GetKeyDown (KeyCode.E)){
				currentRoom = "Office";
				minutesElapsed += smallTimeStep + smallTimeStep;
			}
			break;
		
		case "Office":
			textBuffer += "\nGasping, sweat beading at your forehead, you finally stumble through the elevator onto your office floor. " +
				"Unfortunately your boss is already there waiting for you.\n" + 
					"\nYou look and the clock reads: " + convertTime(start_time + minutesElapsed) + ".\n";
			if( drank_coffee && (lactase_pills_eaten == 0)){
				textBuffer += "\nBut before you're even able to say a word, a violent stirring in your abdomen drives you towards the bathroom. " +
					"Trapped in the bathroom, the lactose consumes your insides." +
						"\n\nYOU DIED.\nPress [Space] to not actively seek out your own violent demise";
				break;
			} else if( drank_coffee && (lactase_pills_eaten > 0)){
				textBuffer += "\nYour heart sinks to your stomach, and for a moment, you fear that the coffee has finally taken its toll. " +
					"But then you remember that you enlisted the aid of lactase pills, and the fear subsides. ";
			} else if(!drank_coffee){
				textBuffer += "\nYou're afraid what your boss is going to say.";
			}

			//Boss Check
			//time check
			if(!boss_pissed && minutesElapsed <= (end_time - start_time)){
				//Good End - Keep your job
				textBuffer += "\nYour boss is surprised to see you on time, and lets you keep your job. " +
					"Well done! With a couple more years of work you'll be able to pay off your student loans and feed your cat." +
					"\n\nYou win! (Good End?)" +
						"\nPress [Space] to restart and lose your job or something";
				break;
			} else if( boss_pissed && minutesElapsed <= (end_time - start_time)){
				//True End - Keep your job, on call for 3 weeks, cat dies
				textBuffer += "\nYour boss frowns at you. " +
					"She's pissed that you got in her way in the parking lot. " +
						"In retaliation, she puts you on-call for the next three weeks. " +
						"As a result, your cat dies because you couldn't give it enough attention. " +
						"At least you'll get to pay off your student loans. " +
						"\n\nYou win! (Sorta)" +
						"\nPress [Space] to restart and save your cat";
				break;
			} else if(!boss_pissed && minutesElapsed > (end_time - start_time)){
				//YOU ARE LATE 
				textBuffer += "\nYour boss however, cooly fires you on the spot. " +
					"You didn't even make it to your cubicle.";
			
			} else if( boss_pissed && minutesElapsed > (end_time - start_time)){
				//Bad End - You're on call for the next 3 weeks, cat dies, and then you're fired
				textBuffer += "\nYour boss is visibily pissed. "+
					"Not only were you late, but you messed with her in the parking lot. " +
					"She puts you on-call for the next three weeks. " +
					"Because of this, your cat dies. " +
						"After your three weeks of indentured servitude are up, you are fired.";
			}
			textBuffer += "\n\n[Q] Go Home";
			if( Input.GetKeyDown (KeyCode.Q)){
				currentRoom = "Home";
			}
			break;

		case "Home":
			//If Boss is not pissed and Cat is fed, you can fake your death
			textBuffer += "\nWith no money, and no job, you have limited options:\n";
			textBuffer += "\n[Q] Allow yourself to be crushed to death by student loans.";
			textBuffer += "\n[W] Commit suicide to have your loans forgiven.";
			if( Input.GetKeyDown (KeyCode.Q)){
				currentRoom = "Epilogue";
			} else if (Input.GetKeyDown (KeyCode.W)){
				currentRoom = "Epilogue";
			}
			if(	!boss_pissed && cat_fed){
				textBuffer += "\n[E] Fake your death.";
				if( Input.GetKeyDown (KeyCode.E)){
					currentRoom = "Europe";
				}
			}
			break;

		case "Epilogue":
			textBuffer += "\nUnable to pay back your student loans without a job, you choose the only choice left." +
				"\nYou died." +
				"\nPress [Space] to not die (good luck).";
			break;

		case "Europe":
			textBuffer += "\nBy feeding Skippy, you gained a valuable feline ally that day. " +
				"With his assistance, you faked your death and had your student debt forgiven. " +
					"You then fled the country and sought asylum in Europe, where you lived debt free and content. " +
					"\n\nYou win(?)\nPress [Space] to not win.";
			break;
		}

		/* CLASS SOURCE CODE DO NOT USE
		if ( currentRoom == "Lobby" ) {
			// all your LOBBY code will go here later!
			//typing "\n" in a string means "line break"
			textBuffer += "\nYou see the security guard.";
			//the line of code below is the Same as the line above
			// textBuffer = textBuffer + "\nYou see the Parsons security guard."

			textBuffer += "\npress [W] to go to elevators";
			textBuffer += "\npress [S] to go outside";

			if (Input.GetKeyDown (KeyCode.W)) { // if player pushes W...
				currentRoom = "Elevators";
			} else if (Input.GetKeyDown ( KeyCode.S)) {
				currentRoom = "Outside";
			}
		} else if (currentRoom == "Elevators") {
			// all your ELEVATORS code go here later!
			textBuffer += "\nYou're waiting.";
			//But which room will let the user set "hasStudentID" to true?
			if (hasPhone == false) { // THIS NEEDS TO BE CHANGED
				textBuffer += "\nYou can't go in without your ID card, though... ";
			} else{
				textBuffer += "\nYou can swipe your student ID and the guard smiles.";
				// TODO: add choice to take elevator up to the classroom?
			}
		} else if (currentRoom == "Outside") {
			// all your OUTSIDE code will go here later!
			textBuffer += "\nIT IS REALLY HOT WHAT IS WRONG WITH YOU";
			textBuffer += "\npress [S] to go back INSIDE, LIKE RIGHT NOW";
			textBuffer += "\n(oh hey you found your student ID on the floor!)";
			hasPhone = true; // THIS NEEDS TO BE CHANGED

			// when "if" statement has no curly braces, then only next line happens
			if (Input.GetKeyDown (KeyCode.S))
				currentRoom = "Lobby";
		}
		// lets "render out" our text buffer and displat it on-screen
		// we need to do this at the end otherwise we'll display text too soon
		*/
		GetComponent<Text>().text = textBuffer;
	} // closes out update() scope
}