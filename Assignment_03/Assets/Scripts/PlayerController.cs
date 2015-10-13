using UnityEngine;
using System.Collections;

public class PlayerController : MonoBehaviour {

	public float movespeed = 5f;
	public float turnspeed = 100f;

	// Update is called once per frame
	void Update () {
		if(Input.GetKey(KeyCode.W)){
			transform.Translate ( Vector3.forward * Time.deltaTime * movespeed/*, Camera.main.transform*/);
		}
		if(Input.GetKey(KeyCode.S)){
			transform.Translate ( Vector3.back * Time.deltaTime * movespeed/*, Camera.main.transform*/);
		}
		if(Input.GetKey(KeyCode.A)){
			transform.Rotate(0f, -(Time.deltaTime * turnspeed), 0f);
		}
		if(Input.GetKey(KeyCode.D)){
			transform.Rotate(0f, Time.deltaTime * turnspeed, 0f);
		}
		//Camera.main.transform.position = transform.position + new Vector3(0f, 5f, -5f);
		//Camera.main.transform.eulerAngles = transform.eulerAngles + new Vector3(5f, 0f, 0f);
	}
}
