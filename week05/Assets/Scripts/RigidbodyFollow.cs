using UnityEngine;
using System.Collections;

public class RigidbodyFollow : MonoBehaviour {

	public Transform followThis; //assign in Inspector
	Rigidbody rbody;
	Vector3 inputVector;
	float movespeed = 5f;

	// Use this for initialization
	void Start () {
		rbody = GetComponent<Rigidbody>();
	}
	
	// Update is called once per frame
	void Update () {
		// B - A if you want a vector going from A to B
		inputVector = followThis.position - transform.position;
	}

	void FixedUpdate() {
		rbody.velocity = Vector3.Normalize (inputVector) * movespeed; // vector3.normalize "standardizes a vector to length 1
	}
}
