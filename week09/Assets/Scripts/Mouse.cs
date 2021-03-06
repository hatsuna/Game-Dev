﻿using UnityEngine;
using System.Collections;

public class Mouse : MonoBehaviour {

	public Transform Cat;

	Rigidbody rbody;
	float fov = 180;

	// Use this for initialization
	void Start () {
		rbody = GetComponent<Rigidbody>();
	}
	
	// Update is called once per frame
	void Update () {
	
	}

	void FixedUpdate(){
		Vector3 directionToCat = Cat.transform.position - transform.position;

		if (Vector3.Angle(transform.forward, directionToCat) < fov){
			Ray mouseRay = new Ray(transform.position, directionToCat);
			RaycastHit mouseRayHitInfo = new RaycastHit();
			if (Physics.Raycast(mouseRay, out mouseRayHitInfo, 100.0f)){
				if(mouseRayHitInfo.collider.tag == "Cat"){
					Debug.Log ("I see cat");
					if (mouseRayHitInfo.distance <= 20.0f){
						Debug.Log ("run!");
						transform.forward = -directionToCat.normalized;
						rbody.AddForce(-directionToCat.normalized * 1000.0f);
					}
				}
			}
		}
	}
}

// Pseudocode
/*Mouse.cs script:

declare a public variable, of type Transform, called "cat"

FIXED UPDATE:
declare a var of type Vector3, called "directionToCat", set to a vector that goes from [current position] to [cat's current position]
if the angle between [current forward direction] vs. [directionToCat] is less than 180 degrees, then...
    declare a var of type Ray, called "mouseRay" that starts from [current position] and goes along [directionToCat]
    declare a var of type RaycastHit, called "mouseRayHitInfo"
    if raycast with mouseRay and mouseRayHitInfo for 100 units is TRUE, then... 
        if mouseRayHitInfo.collider.tag is exactly equal to the word "Cat"... (mouse sees cat!)
            add force on rigidbody, along [-directionToCat.normalized * 1000f] (run away!)
*/