﻿using UnityEngine;
using System.Collections;

public class Cat : MonoBehaviour {

	public Transform Mouse;

	Rigidbody rbody;
	float fov = 120;
	// Use this for initialization
	void Start () {
		rbody = GetComponent<Rigidbody>();
	}
	
	// Update is called once per frame
	void Update () {
	
	}

	void FixedUpdate(){
		Vector3 directionToMouse = Mouse.transform.position - transform.position;
		if (Vector3.Angle(transform.forward, directionToMouse) < fov){
			Ray catRay = new Ray(transform.position, directionToMouse);
			RaycastHit catRayHitInfo = new RaycastHit();
			if (Physics.Raycast(catRay, out catRayHitInfo, 100.0f)){
				if(catRayHitInfo.collider.tag == "Mouse"){
					Debug.Log ("I see mouse");
					transform.forward = directionToMouse.normalized;
					rbody.AddForce(directionToMouse.normalized * 1000.0f); //chase
					fov = 90;
					if(catRayHitInfo.distance <= 5.0f){
						Mouse.gameObject.SetActive(false);
					}
				}
				else{
					//Debug.Log ("I lost the mouse");
					fov = 120;
				}
			}
		}
	}
}

//Pseudocode
/*
Cat.cs script:
	
	declare a public variable, of type Transform, called "mouse"
		
		FIXED UPDATE:
		declare a var of type Vector3, called "directionToMouse", set to a vector that goes from [current position] to [mouse's current position]
if the angle between [current forward direction] vs. [directionToMouse] is less than 90 degrees, then...
    declare a var of type Ray, called "catRay" that starts from [current position] and goes along [directionToMouse]
    declare a var of type RaycastHit, called "catRayHitInfo"
    if raycast with catRay and catRayHitInfo for 100 units is TRUE...
        if catRayHitInfo.collider.tag is exactly equal to the word "Mouse"... (Cat sees the mouse!)
            if catRayHitInfo.distance is less than or equal to 5...
                then destroy the mouse gameObject (we caught the mouse!)
            else...
                add force on rigidbody, along [directionToMouse.normalized * 1000f] (chase it!)

*/