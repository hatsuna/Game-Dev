using UnityEngine;
using System.Collections;

public class SoundTrigger : MonoBehaviour {

	public AudioSource mySound; // assign in inspector

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
		if(Input.GetKeyDown (KeyCode.P)){
			if (mySound.isPlaying == false){
				mySound.Play();
			}

		}
	}
}
