using UnityEngine;
using System.Collections;

public class GameLogic : MonoBehaviour {

	public Transform RealCam;
	public Transform DreamCam;
	bool isDreaming = false;
	float awakeTimer = 0f;

	void Start (){
		DreamCam.gameObject.SetActive (false);
		RealCam.gameObject.SetActive (true);	
	}

	// Update is called once per frame
	void Update () {
		if( Input.GetKeyDown (KeyCode.Q)){
			isDreaming = !isDreaming; // If dreaming -> not dreaming, if not dreaming -> now dreaming
		}

		if(isDreaming){
			RealCam.gameObject.SetActive (false);
			DreamCam.gameObject.SetActive (true);
		} else {
			DreamCam.gameObject.SetActive (false);
			RealCam.gameObject.SetActive (true);
		}
	}
}
