using UnityEngine;
using System.Collections;

public class SoundTrigger : MonoBehaviour {

	public AudioSource mySound; // assign in inspector

	float playFreq = 10; //how often sound will play once its done playing
	float elapsed = 0;
	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
		if (elapsed >= playFreq){
			mySound.Play();
		}
		if (mySound.isPlaying == true){
			elapsed = 0;
		}else {
			elapsed += Time.deltaTime;
		}
	}
}
