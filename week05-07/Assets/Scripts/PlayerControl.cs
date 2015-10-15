using UnityEngine;
using System.Collections;

public class PlayerControl : MonoBehaviour {

	public Transform myCamera; //assign in Inspector

	float moveSpeed = 3f; // movespeed of player characters

	Rigidbody rbody;
	Vector3 inputVector; // remembers what direction I want to go in, based on input
	// Use this for initialization
	void Start () {
		rbody = GetComponent<Rigidbody>(); // remember shortcut to access rigidbody
	}

	// Update is called once per frame & for Input & Graphics
	void Update () {
		//float jump = Input.GetButtonDown("Jump") ? 1f : 0f; //if getbutton down, set jump to 5, else set to 0
		inputVector = new Vector3(Input.GetAxis("Horizontal"), 0 /* jump*/, Input.GetAxis ("Vertical"));
		float mouseX = Input.GetAxis("Mouse X");
		float mouseY = - Input.GetAxis("Mouse Y");
		transform.Rotate(0f, mouseX, 0f);
		myCamera.Rotate(mouseY, 0f, 0f);

		/*Lerp
		Vector3.Lerp(Vector3.zero, Vector3.one, time);

		or 

		GetComponenet<Renderer>().material.color = Color.Lerp(color.white, color.red, time);

		or use a sin wave to create something that is flashing

		*/
	}

	// FixedUpdate is when Physics runs	
	void FixedUpdate () { //dont need to multiply by time because time is already applied here
		//Need to preserve our y-velocity
		float yVelocity = rbody.velocity.y;//remembering y velocity
		rbody.velocity = transform.TransformDirection(inputVector) * moveSpeed;
		rbody.velocity += new Vector3( 0f, yVelocity, 0f); //adding our y-velocty back

		//Debug.Log ("velocity: " + rbody.velocity);
	}
	
	// Use tags to differentiate between collided objects,
	//		hazards, things to pick up, etc
	void OnTriggerEnter (Collider activator) { // this parameter will get automatically get filled in with the thing that enters it
		GameLogic.GLogic.LogicTrigger(activator, this.tag);
	}
	
	void OnTriggerExit (Collider deactivated) {
		GameLogic.GLogic.LogicUntrigger(deactivated, this.tag);

	}

//in-class code
/*
	void OnTriggerStay (Collider active){ // could use this
		//can maybe parenting to pick up items
		if (activator.tag == "Pickup"){
			activator.transform.SetParent (transform);
		}
	}*/

}
