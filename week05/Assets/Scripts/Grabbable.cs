using UnityEngine;
using System.Collections;
using UnityEngine.UI;

public class Grabbable : MonoBehaviour {
	
	public Text hintUI;
	string textbuffer;


	void Update(){
		hintUI.text = textbuffer;
	}
	// Whatever Code is here: will get fired when something enters the trigger
	// OR, if you put this on the player, it will fire when the player enters a trigger
	void OnTriggerEnter (Collider activator) { // this parameter will get automatically get filled in with the thing that enters it
		textbuffer = "press e to touch";
		if( Input.GetKeyDown(KeyCode.E)){ // Change this to button down later
			//pick up the child object and unchild it, add it to inventory?
				//maybe delete it from scene and add it to UI element?

		}
	}
	void OnTriggerExit (Collider deactivted) {
		textbuffer = "";
	}
}
