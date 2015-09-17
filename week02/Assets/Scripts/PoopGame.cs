using UnityEngine;
using System.Collections;

using UnityEngine.UI; // allows us to talk to Text Objects

public class PoopGame : MonoBehaviour {

	// Declare a variable to record points
	float score = 0f; // declaring a decimal number that starts at zero

	// We want this script to talk to our text UI object
	// We need to tell unity which Text object to talk to
	public Text mytext;

	// Use this for initialization
	void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {
		//ask unity if player is holding down spacebar
		if ( Input.GetKey ( KeyCode.Space) ){
			// Add "time.deltaTIme" on top of existing score
			// "Time.deltaTime" = frame duration
			// also can be written as score = score + Time.deltaTime; 
			score += Time.deltaTime;
			//prints score to UI
			mytext.text = ( score.ToString() );
		}
	}
}
