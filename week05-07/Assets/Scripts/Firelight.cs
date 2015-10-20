using UnityEngine;
using System.Collections;

public class Firelight : MonoBehaviour {

	public Camera RealCam;
	Light firelight;
	AudioSource audio;
	int seed;


	// Use this for initialization
	void Start () {
		seed = Random.Range (5,10);
		firelight = gameObject.GetComponent<Light>();
		audio = gameObject.GetComponent<AudioSource>();	
	}
	
	// Update is called once per frame
	void Update () {
		firelight.intensity = 2 + ( 10 * Mathf.Abs(Mathf.Sin(seed + Time.time)));
		if (RealCam.isActiveAndEnabled){
			audio.mute = true;
		}else{
			audio.mute = false;
		}
	}
}
