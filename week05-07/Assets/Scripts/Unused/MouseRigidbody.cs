using UnityEngine;
using System.Collections;

public class MouseRigidbody : MonoBehaviour {

	Rigidbody rbody;
	Vector2 inputVector;
	float movespeed = 10f;

	// Use this for initialization
	void Start () {
		rbody = GetComponent<Rigidbody>();
	}
	
	// Update is called once per frame
	void Update () {
		inputVector = new Vector2(Input.GetAxis ("Mouse X"), Input.GetAxis("Mouse Y"));
	}

	void FixedUpdate (){
		rbody.velocity = transform.TransformDirection ( new Vector3(inputVector.x, 0f, inputVector.y) * movespeed);
	}
}
