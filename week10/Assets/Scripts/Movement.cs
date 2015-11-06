using UnityEngine;
using System.Collections;

public class Movement : MonoBehaviour {

	Rigidbody rbody;

	// Use this for initialization
	void Start () {
		rbody = GetComponent<Rigidbody>();
	}
	
	// Update is called once per frame
	void Update () {
	
	}

	void FixedUpdate(){
		float movespeed = 0.0f;
		if (gameObject.tag == "Cat"){
			movespeed = 7.5f;
		} else { // gameobject is mouse;
			movespeed = 10.0f;
		}
		rbody.velocity = transform.forward * movespeed + Physics.gravity;
		Ray moveRay = new Ray(transform.position, transform.forward);
		Debug.DrawRay (moveRay.origin, moveRay.direction, Color.cyan);
		if(Physics.SphereCast(moveRay, 0.5f, 3f)){
			float rand = Random.value;
			if(rand >= 0.5f){
				transform.Rotate(0, 90, 0);
			}else{
				transform.Rotate(0, -90, 0);
			}
		}
	}
}

// Pseudocode
/*
 * Movement.cs script:

FIXED UPDATE:
set rigidbody velocity equal to [current forward direction] * 10f + Physics.gravity
declare a var of type Ray, called "moveRay" that starts from [current position] and goes [current forward direction]
if Raycast with moveRay for 3 units is TRUE... (if there is an obstacle in front of us...)
     then randomly turn 90 degrees left or right (around Y axis)
*/