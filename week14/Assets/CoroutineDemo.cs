using UnityEngine;
using System.Collections;

public class CoroutineDemo : MonoBehaviour {

	// Use this for initialization
	void Start () {
		StartCoroutine(MyFirstCoroutine());
	}

	IEnumerator MyFirstCoroutine(){
		Debug.Log ("coroutine started");
		//a yield tells Unity to pause in this function
		yield return 0; // wait 1 frame
		Debug.Log ("ok, I waited for 1 frame, now I'm continuing!...");
		yield return null; // same as zero
		yield return 0;
		Debug.Log ("Ok I waited 2 more frames");
		yield return new WaitForSeconds(1f); // wait for 1 second
		Debug.Log ("I'm done waiting");
	}
}
