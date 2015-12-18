using UnityEngine;
using System.Collections;

public class BallSwapt : MonoBehaviour {

	public Transform ball1,ball2;
	// Use this for initialization
	void Start () {
		StartCoroutine(BallSwaptCoroutine());
	}


	IEnumerator BallSwaptCoroutine(){
		while(true){
			Vector3 ball1Start = ball1.position;
			Vector3 ball2Start = ball2.position;

			bool playSound = false;

			float t = 0f; // counter variable, "t" = "time"
			while (t<1f){
				t += Time.deltaTime; // make t bigger
				ball1.position = Vector3.Lerp (ball1Start, ball2Start, t);
				ball2.position = Vector3.Lerp (ball2Start, ball1Start, t);
				if (t > 0.45f && t < 0.55f && playSound == false){
					GetComponent<AudioSource>().Play (); // play sound
					playSound = true;
				}
				yield return 0;
			}
		}
	}
}
