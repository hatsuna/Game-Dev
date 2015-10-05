using UnityEngine;
using System.Collections;

public class RigidbodyMove : MonoBehaviour {

	public float moveSpeed = 5f;
	Rigidbody rbody;
	Vector3 inputVector; // remembers what direction I want to go in, based on input

	public Transform myCamera; //assign in Inspector

	// Use this for initialization
	void Start () {
		rbody = GetComponent<Rigidbody>(); // remember shortcut to access rigidbody
	}
	
	// Update is called once per frame & for Input & Graphics
	void Update () {
		float jump = Input.GetButtonDown ("Jump") ? 1f : 0f; //if getbutton down, set jump to 5, else set to 0

		inputVector = new Vector3(Input.GetAxis("Horizontal"), jump, Input.GetAxis ("Vertical"));
		Debug.Log ("input: " + inputVector);
		float mouseX = Input.GetAxis("Mouse X");
		float mouseY = - Input.GetAxis("Mouse Y");
		transform.Rotate(0f, mouseX, 0f);
		myCamera.Rotate(mouseY, 0f, 0f);
	}

	// FixedUpdate is when Physics runs
	void FixedUpdate () { //dont need to multiply by time because time is already applied here
		//Need to preserve our y-velocity
		float yVelocity = rbody.velocity.y;//remembering y velocity
		rbody.velocity = transform.TransformDirection(inputVector) * moveSpeed;
		rbody.velocity += new Vector3( 0f, yVelocity, 0f); //adding our y-velocty back

		Debug.Log ("velocity: " + rbody.velocity);
	}
}
