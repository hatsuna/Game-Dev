using UnityEngine;
using System.Collections;
using UnityEngine.UI;

public class GameLogic : MonoBehaviour {

	public Transform player;
	public Text textUI;
	public Text winUI;
	float victorySize = 5f;
	string winState = "";

	// Update is called once per frame
	void Update () {
		string textBuffer = "";

		if(winState != "" && Input.GetKeyDown (KeyCode.Space)) {  
			Application.LoadLevel (0);  
		}

		if(Input.GetKey(KeyCode.Space)){
			Vector3 offset = transform.position - player.transform.position;
			float distFromGoal = offset.magnitude;

			if( distFromGoal <= victorySize){
				winState = "You got booty!\nPress [Space] to restart";
			}else{
				winState = "You got crabs.\nThe Booty was " + distFromGoal + " units away.\nPress [Space] to restart";
			}
		}

		textBuffer += "[W] Forward\n[S] Backwards\n[A] Left\n[D] Right\n[Space] GET BOOTY";

		textUI.text = textBuffer;
		winUI.text = winState;
	}
}
