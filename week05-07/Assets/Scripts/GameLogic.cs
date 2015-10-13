using UnityEngine;
using System.Collections;
using UnityEngine.UI;

public class GameLogic : MonoBehaviour {

	public Transform RealCam;
	public Transform DreamCam;
	public Light cameraLight;
	public Text AwakeUI;
	public Text hintUI;
	public Text inventoryUI;
	public Text controlsUI;
	
	bool isDreaming = true;
	float maxAwakeTime = 10.0f; //how long you can stay awake for
	float minAwakeTime = 3.0f;
	float awakeTimer = 10.0f; // how long you can currently stay awake for
	// float awakeRestore = 0.01f; // how much time restores while dreaming, only needed if one is skewed
	string GameState = "Start";
	/*
	 * Start - Start screen
	 * Alive - playing
	 * Dead - Death Screen
	 * 
	 */
	string DeathTextBuffer;
	bool canInteract = false; // determines if player can use nearItem
	bool hasItem = false;
	GameObject nearItem;

	void Start (){
	}

	void CheckWakeState(){
		/*controlsUI.text += "\nQ to switch";
		if( Input.GetKeyDown (KeyCode.Q)){
			isDreaming = !isDreaming; // If dreaming -> not dreaming, if not dreaming -> now dreaming
		}*/
		
		//Changing light intensity based on awake time
		cameraLight.intensity = 10 * (awakeTimer / maxAwakeTime);	
		
		//WHAT IF YOU"RE NOT IN CONTROL OF YOUR DREAMING AND WAKEFULNESS
		if (awakeTimer <= 0){
			isDreaming = true;
			if (maxAwakeTime > minAwakeTime){
				maxAwakeTime = (maxAwakeTime / 4) * 3; // Reduces Max awake time by 1/4 each cycle
			}else {
				maxAwakeTime = minAwakeTime;
			}
		} /*else if (awakeTimer >= ( maxAwakeTime)){ // Allows player to choose when to come out of dream state
			isDreaming = false;
		}*/ 
		
		AwakeUI.text = "" + awakeTimer;
		
		
		// Give player feedback that they are falling asleep
		if (awakeTimer <= (maxAwakeTime / 5.0f) && !isDreaming && awakeTimer >= (maxAwakeTime / 10.0f)){
			hintUI.text = "\n\nSo tired..";
		}
		if (awakeTimer <= 0){
			hintUI.text = "";
		}
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

	// Update is called once per frame
	void Update () {
	switch(GameState){
		case "Start":
			hintUI.text = 
				"Parasomnia\n" +
					"a game by Matt\n\n" +
					"Is that... an alarm?\n" +
					"Press [Space] to wake up\n" +
					"Don't let your dreams be dreams.";
			
			//probably insert some alarm sound thing here or have it periodically go off
			if(Input.GetKeyDown (KeyCode.Space)){
				hintUI.text = "";
				GameState = "Alive";
				//Activate both players *********************
			}
			break;
		case "Alive":
			controlsUI.text = "[WASD] to move\nMouse to look\n[Space] to wake up\n[R] to restart";
			CheckWakeState();
			if(Input.GetKeyDown (KeyCode.E)){
				if (canInteract && !hasItem){
					inventoryUI.text += "\n" + nearItem.name;
					hintUI.text = "Picked up " + nearItem.name;
					hasItem = true;
				}
			}
			break;
		case "Dead":
			hintUI.text = DeathTextBuffer;
			break;
		default:
			break;
		}

		//restart level
		if(Input.GetKeyDown(KeyCode.R)){
			Application.LoadLevel(0);
		}
	}


	// Use tags to differentiate between collided objects,
	//		hazards, things to pick up, etc
	void OnTriggerEnter (Collider activator) { // this parameter will get automatically get filled in with the thing that enters it
		hintUI.text = "Is a trigger? " + activator.isTrigger;

		if (activator.gameObject.tag == "Player"){
			hintUI.text = "GG I just broke my game";
		}

		if (activator.gameObject.tag == "Item"){
			hintUI.text = "There's something here.\n[E] to pick up";	
			nearItem = activator.gameObject;
			canInteract = true;
		} 
		if (activator.gameObject.tag == "Hazard"){
			hintUI.text = "you are dying right now";
		}
		if (activator.gameObject.tag == "Window Warning"){
			hintUI.text = "You feel a gentle breeze.\nThere must be a window nearby.";
		}
		if (activator.gameObject.tag == "Window"){
			DeathTextBuffer = "You stumble into the window and crash though the glass.\nYou died.\n\nPress [R] to restart.";
			GameState = "Dead";
		}
		
	}

	void OnTriggerExit (Collider deactivated) {
		if (deactivated.gameObject.tag == "Item"){
			canInteract = false;
			if (hasItem){
				deactivated.gameObject.SetActive (false);
			}
		}
		hintUI.text = "";
	}
}

//in-class code
/*
	void OnTriggerStay (Collider active){ // could use this
		//can maybe parenting to pick up items
		if (activator.tag == "Pickup"){
			activator.transform.SetParent (transform);
		}
	}*/
