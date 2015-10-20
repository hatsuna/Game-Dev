using UnityEngine;
using System.Collections;
using UnityEngine.UI;

public class GameLogic : MonoBehaviour {
	
	/*
	 * Set off Alarm clock
	 * Turn off Alarm clock
	 * Find Pills 
	 * Bring your Dream self to the door
	 * Bring your Real self to bed
	 */


	//use static variables to pass variables from one scene to the next
	//use public static <ClassName> <VariableName> to have anything talk to the object easily
	// in Start(), set <VariableName> = this;
	public static GameLogic GLogic;

	public Transform RealCam;
	public Transform DreamCam;
	public Light cameraLight;
	public Text AwakeUI;
	public Text hintUI;
	public Text inventoryUI;
	public Text controlsUI;

	bool isDreaming = true; //Starts player in dream
	float initWakeTime = 10.0f; // Wake Time you start with
	float maxAwakeTime; // Wake Time per Cycle
	float minAwakeTime = 3.0f; // Lower Limit of how short cycles can be
	float awakeTimer; // Current Wake Time
	float awakeReduction = 0.9f; // After Each cycle, what percentage of awake time will be available next cycle
	float initLightIntensity = 10.0f; //Starting light intensity
	string GameState = "Start";
	/*
	 * Start - Start screen
	 * Alive - playing
	 * Dead - Death Screen
	 * 
	 */
	string DeathTextBuffer;
	bool canInteract = false; // determines if player can use near
	bool hasPhone = false;
	bool hasPills = false;
	GameObject near;
	AudioSource audio;

	void Start (){
		GLogic = this;
		maxAwakeTime = initWakeTime;
		awakeTimer = initWakeTime;
		RealCam.gameObject.SetActive (false);
		DreamCam.gameObject.SetActive (true);
		audio = gameObject.GetComponent<AudioSource>();
	}

	void CheckWakeState(){
		/*controlsUI.text += "\nQ to switch";
		if( Input.GetKeyDown (KeyCode.Q)){
			isDreaming = !isDreaming; // If dreaming -> not dreaming, if not dreaming -> now dreaming
		}*/
		
		//Changing light intensity based on awake time
		cameraLight.intensity = initLightIntensity * (awakeTimer / maxAwakeTime);
		
		//WHAT IF YOU"RE NOT IN CONTROL OF YOUR DREAMING AND WAKEFULNESS
		if (awakeTimer <= 0){
			isDreaming = true;
			if (maxAwakeTime > minAwakeTime){
				maxAwakeTime = maxAwakeTime  * awakeReduction; // Reduces Max awake time by awakeReduction each cycle
			}else {
				maxAwakeTime = minAwakeTime;
			}
		} /*else if (awakeTimer >= ( maxAwakeTime)){ // Allows player to choose when to come out of dream state
			isDreaming = false;
		}*/ 
		
		AwakeUI.text = "" + (int)awakeTimer;
		
		
		// Give player feedback that they are falling asleep
		if (awakeTimer <= (maxAwakeTime / 4.0f) && !isDreaming && (awakeTimer >= 0.0f)){
			AwakeUI.text += "\nSo tired..";
		}

		// Give player gameplay progression hints
		if(isDreaming){
			if (maxAwakeTime < initWakeTime && maxAwakeTime >= (initWakeTime * 0.75)){
				AwakeUI.text += "\nAm I dreaming?";
			}
			if (maxAwakeTime <= (initWakeTime * 0.75f) && maxAwakeTime >= (initWakeTime * 0.5f)){ // between 75% and 50% of original time
				AwakeUI.text += "\nWhy can't I sleep?";
			}
			if (maxAwakeTime <= (initWakeTime * 0.5f) && maxAwakeTime >= (initWakeTime * 0.25f)){ // between 50% and 25% of original time
				AwakeUI.text += "\nI just want to lay down.";
			}
		} else { //is not dreaming)
			if (maxAwakeTime < initWakeTime && maxAwakeTime >= (initWakeTime * 0.75)){
				AwakeUI.text += "\nOr is this real?";
			}
			if (maxAwakeTime <= (initWakeTime * 0.75f) && maxAwakeTime >= (initWakeTime * 0.5f)){ // between 75% and 50% of original time
				AwakeUI.text += "\nI just want to sleep.";
			}
			if (maxAwakeTime <= (initWakeTime * 0.5f) && maxAwakeTime >= (initWakeTime * 0.25f)){ // between 50% and 25% of original time
				AwakeUI.text += "\nWhat is wrong with me?";
			}
		}
		/*if (awakeTimer <= 0){
			hintUI.text = "";
		}*/

		// Change Player Cameras based on Waking state
		if(isDreaming ){//|| awakeTimer <= 0){
			RealCam.gameObject.SetActive (false);
			DreamCam.gameObject.SetActive (true);

			/*if (awakeTimer <= 0){
				isDreaming = true;
			}*/
			if (Input.GetKeyDown (KeyCode.Space)){
				isDreaming = false;
			}
			if (awakeTimer < maxAwakeTime){
				awakeTimer += Time.deltaTime;
			}
		} else {
			DreamCam.gameObject.SetActive (false);
			RealCam.gameObject.SetActive (true);
			if (awakeTimer > 0){
				awakeTimer -= Time.deltaTime;
			}
			if (Input.GetKeyDown (KeyCode.Space)){
				awakeTimer += 0.1f;
			}
			/*if (awakeTimer < 0){
				awakeTimer = 0;
			}*/
		}
	}

	void EndGame(){
		DreamCam.gameObject.GetComponent<AudioListener>().enabled = false;
		DreamCam.gameObject.SetActive(false);
		RealCam.gameObject.GetComponent<AudioListener>().enabled = false;
		RealCam.gameObject.SetActive(false);
		AwakeUI.text = "";
		inventoryUI.text = "";
		controlsUI.text = "";
		GL.Clear(false,true,Color.black);
	}

	// Update is called once per frame
	void Update () {
	switch(GameState){
		case "Start":
			hintUI.text = 
				"Parasomnia\n" +
					"a game by matt\n\n" +
					"Is that... an alarm?\n" +
					"Press [Space] to wake up\n" +
					"Don't let your dreams be dreams.\n\n" +
					"Sound is recommended";
			
			//WIP
			//probably insert some alarm sound thing here or have it periodically go off
			if(Input.GetKeyDown (KeyCode.Space)){
				hintUI.text = "";
				GameState = "Alive";
				goto case "Alive";
			}
			break;
		case "Alive":
			controlsUI.text = "[WASD] to move\nMouse to look\n[Space] to wake up\n[R] to restart";
			CheckWakeState();
			if(Input.GetKeyDown (KeyCode.E)){
				if (canInteract){ // && !hasPhone){
					inventoryUI.text += "\n" + near.tag;
					hintUI.text = "Picked up " + near.tag;
					if ( near.tag == "Phone"){
						hasPhone = true;
						if(hasPills){
							hintUI.text += "\nNow I can finally go back to bed.";
						}else{ //doesnt have pills yet
							hintUI.text += "\nUgh finally.\nNow I just need some sleeping pills.";
						}
					}
					if ( near.tag == "Pills"){
						hasPills = true;
						if(hasPhone){
							hintUI.text += "\nI should be able to sleep now. Time for bed.";
						}else{ //no phone
							hintUI.text += "\nI should be able to fall asleep,\nbut that damn alarm is still going off.";
						}
					}

				}
			}
			break;
		case "Dead":
			if (audio.isPlaying == false){
				EndGame();
				hintUI.text = DeathTextBuffer;
			}
			break;
		case "Asleep": //win
			EndGame();
			hintUI.text = "Goodnight.\n\nParasomnia\n" +
				"a game by matt\n\n" +
					"[R] to play again";
			break;
		default:
			break;
		}

		//restart level
		if(Input.GetKeyDown(KeyCode.R)){
			Application.LoadLevel(0);
		}
	}

	
	public void LogicTrigger(Collider activator, string playerTag){
		if (activator.gameObject.tag == "Bed"){
			if (playerTag == "Player" && RealCam.gameObject.activeSelf){
				hintUI.text = "Your bed feels nice and warm.";
			}
			if (playerTag == "Player" && DreamCam.gameObject.activeSelf){
				hintUI.text = "Even within the dream, you feel the softness of the bed under you.";
			}
			if (hasPhone && hasPills){
				//Win
				GameState = "Asleep";
			}else if (!hasPhone || !hasPills){
				// Need to turn off the alarm and get pills
				hintUI.text += "\nBut you still need to turn off the alarm\nand take some sleeping pills before you can sleep.";
			}
		}
		if (activator.gameObject.tag == "Phone"){
			if (playerTag == "Player" && RealCam.gameObject.activeSelf){
				hintUI.text = "Oh, here's your phone.\n[E] to pick up";
			}
			if (playerTag == "Player" && DreamCam.gameObject.activeSelf){
				hintUI.text = "Your feel your hand brush against your phone.\n[E] to pick up";
			}
			near = activator.gameObject;
			canInteract = true;
		} 
		if (activator.gameObject.tag == "Pills"){
			if (playerTag == "Player" && RealCam.gameObject.activeSelf){
				hintUI.text = "The sleeping pills are right where you left them.\n[E] to pick up";
			}
			if (playerTag == "Player" && DreamCam.gameObject.activeSelf){
				hintUI.text = "Your hand unconciously grabs for where the pills should be.\n[E] to pick up";
			}
			near = activator.gameObject;
			canInteract = true;
		}
		if (activator.gameObject.tag == "Hazard"){
			if (playerTag == "Dreamer" && DreamCam.gameObject.activeSelf){
				hintUI.text = "The flames around you almost feel hot...\nBut it's only a dream, right?";
			}
		}
		if (activator.gameObject.tag == "Window Warning"){
			if (playerTag == "Player" && RealCam.gameObject.activeSelf){
				hintUI.text = "The window allows a gentle breeze into the room.";
			}
			if (playerTag == "Player" && DreamCam.gameObject.activeSelf){
				hintUI.text = "The open window's cool air causes your skin to tingle,\neven in the dream.";
			}
		}
		if (activator.gameObject.tag == "Window"){
			// WIP
			//Add a forward velocity to push them out the window?
			if (playerTag == "Player" && DreamCam.gameObject.activeSelf){
				DeathTextBuffer = "You feel the glass of the window crack and shatter\n" +
					"as you stumble into the window and fall to your death.\n\nPress [R] to restart.";
			} else if (playerTag == "Player" && RealCam.gameObject.activeSelf){
				DeathTextBuffer = "You drowzily stumble into the window, shattering it.\nThe razor shards " +
					"tear at your skin as you fall into the cloudy abyss below.\n\nPress [R] to restart.";
			}
			if (audio.isPlaying == false){
				audio.Play();
			}
			GameState = "Dead";
		}

		/*Debug messages, remove when done
		if (playerTag == "Player"){
			hintUI.text += "\nThe real player is touching this";
		}
		if (playerTag == "Dreamer"){
			hintUI.text += "\nThe dreamer is touching this";
		}*/
	}

	public void LogicUntrigger(Collider deactivated, string playerTag){
		canInteract = false;
		if (deactivated.gameObject.tag == "Phone" && hasPhone){
			deactivated.gameObject.SetActive (false);
		}
		if (deactivated.gameObject.tag == "Pills" && hasPills){
			deactivated.gameObject.SetActive (false);
		}
		hintUI.text = "";

	}
}
