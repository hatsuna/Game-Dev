using UnityEngine;
using System.Collections;
using UnityEngine.UI;

public class GameLogic : MonoBehaviour {

	public Transform RealCam;
	public Transform DreamCam;
//	public Text controlsUI;
	public Text AwakeUI;
	public Text hintUI;
	
	bool isDreaming = false;
	float maxAwakeTime = 10.0f; //how long you can stay awake for
	float minAwakeTime = 3.0f;
	float awakeTimer = 10.0f; // how long you can currently stay awake for
	// float awakeRestore = 0.01f; // how much time restores while dreaming, only needed if one is skewed
	
	void Start (){
		DreamCam.gameObject.SetActive (false);
		RealCam.gameObject.SetActive (true);	
	}

	// Update is called once per frame
	void Update () {
		/*controlsUI.text += "\nQ to switch";
		if( Input.GetKeyDown (KeyCode.Q)){
			isDreaming = !isDreaming; // If dreaming -> not dreaming, if not dreaming -> now dreaming
		}*/

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
			AwakeUI.text = "Zzz";
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
		// Use tags to differentiate between collided objects,
		//		hazards, things to pick up, etc
	}
}
