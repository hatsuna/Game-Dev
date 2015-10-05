using UnityEngine;
using System.Collections;

public class DeathTrigger : MonoBehaviour {

	// Use this for initialization
	void Start () {
	
	}
	
	// Whatever Code is here: will get fired when something enters the trigger
	// OR, if you put this on the player, it will fire when the player enters a trigger
	void OnTriggerEnter (Collider activator) { // this parameter will get automatically get filled in with the thing that enters it
		Destroy( activator.gameObject );
	}
}
