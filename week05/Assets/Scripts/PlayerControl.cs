using UnityEngine;
using System.Collections;
using UnityEngine.UI;

public class PlayerControl : MonoBehaviour {

	public float moveSpeed = 5f;
	public Text hintUI;
	public Text inventoryUI;
	public Text controlsUI;
	public Transform myCamera; //assign in Inspector

	Rigidbody rbody;
	Vector3 inputVector; // remembers what direction I want to go in, based on input

	bool canInteract = false; // determines if player can use nearItem
	bool hasItem = false;
	GameObject nearItem;

	// Use this for initialization
	void Start () {
		rbody = GetComponent<Rigidbody>(); // remember shortcut to access rigidbody
	}

	// Update is called once per frame & for Input & Graphics
	void Update () {
		controlsUI.text = "[WASD] to move\nMouse to look\n[Space] to wake up";
		//float jump = Input.GetButtonDown("Jump") ? 1f : 0f; //if getbutton down, set jump to 5, else set to 0
		inputVector = new Vector3(Input.GetAxis("Horizontal"), 0 /* jump*/, Input.GetAxis ("Vertical"));
		//Debug.Log ("input: " + inputVector);
		float mouseX = Input.GetAxis("Mouse X");
		float mouseY = - Input.GetAxis("Mouse Y");
		transform.Rotate(0f, mouseX, 0f);
		myCamera.Rotate(mouseY, 0f, 0f);

		if(Input.GetKeyDown (KeyCode.E)){
			if (canInteract && !hasItem){
				inventoryUI.text += nearItem.name + "\n";
				hintUI.text = "Picked up " + nearItem.name;
				hasItem = true;
			}
		}

		//restart level
		controlsUI.text += "\n[R] to restart";
		if(Input.GetKeyDown(KeyCode.R)){
			Application.LoadLevel(0);
		}
	}

	// FixedUpdate is when Physics runs	
	void FixedUpdate () { //dont need to multiply by time because time is already applied here
		//Need to preserve our y-velocity
		float yVelocity = rbody.velocity.y;//remembering y velocity
		rbody.velocity = transform.TransformDirection(inputVector) * moveSpeed;
		rbody.velocity += new Vector3( 0f, yVelocity, 0f); //adding our y-velocty back

		//Debug.Log ("velocity: " + rbody.velocity);
	}

	void OnTriggerEnter (Collider activator) { // this parameter will get automatically get filled in with the thing that enters it
		if (activator.gameObject.tag == "Item"){
			hintUI.text = "[E] to pick up";	
			nearItem = activator.gameObject;
			canInteract = true;
		} 
		if (activator.gameObject.tag == "Hazard"){
			hintUI.text = "you are dying right now";
		}
	}
	void OnTriggerExit (Collider deactivated) {
		if (deactivated.gameObject.tag == "Item"){
			canInteract = false;
			if (hasItem){
				deactivated.gameObject.SetActive (false);
			}
		}
		hintUI.text = "";
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
