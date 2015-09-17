using UnityEngine;
using System.Collections;

using UnityEngine.UI;

public class PressQAlot : MonoBehaviour {

	Text myText;//variable which text gameobject im talking to

	int myScore = 0; // an integer is a whole number

	// Use this for initialization
	void Start () {
		// Tells unity to try to find a text component on the same object
		myText = GetComponent<Text>(); 
		myText.text = "IT WOPRKS !! ITS ALIVE KSJD:FLK";
	}
	
	// Update is called once per frame
	void Update () {
		// detect if player pressed q (but will not fire again until player releases Q)
		if (Input.GetKeyDown (KeyCode.Q)){
			myScore += 1;
			// or myScore = myScore + 1; or myScore++;
		}
		myText.text = (myScore.ToString());
		if (myScore > 20){
			myText.color = Color.red;
		}
	}
}
