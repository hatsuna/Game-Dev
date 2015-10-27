using UnityEngine;
using System.Collections;

public class BallRobot : MonoBehaviour {
	
	// Update is called once per frame
	void Update () {
		// move the ball forward by 5 units per second
		transform.position += transform.forward * Time.deltaTime * 5f;

		// if you sense a wall in front of you, turn right
		Ray ray = new Ray( transform.position, transform.forward);
		Debug.DrawRay (ray.origin, 
		// now shoot the raycast
		if (Physics.Raycast(ray, 2f)){
			// turn right
			float rand = Random.value;
			if (rand >= 0.5f){
				transform.Rotate(0, 90, 0);
			}else{
				transform.Rotate(0, -90, 0);
			}
		}
	}
}
