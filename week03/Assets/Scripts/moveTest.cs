using UnityEngine;
using System.Collections;

public class moveTest : MonoBehaviour {

	public float movespeed = 500f;
	public float turnspeed = 1000f;
	
	// Update is called once per frame
	void Update () {
		//framerate independant vs framerate dependent
		//Dependent = if i have more fps -> go faster
		//Independent = doesn't matter how fast it is, same behavior

		//to make stuff framerate independent,
		//you generally just multiply by "Time.deltaTime"

		if( Input.GetKey(KeyCode.W)){
			//global axis
			//transform.position += new Vector3(0f, 0f, 1f);
			transform.Translate( new Vector3(0f, 0f, movespeed * Time.deltaTime));
		}
		//local axis
		if (Input.GetKey (KeyCode.S)){
			transform.Translate( new Vector3(0f, 0f, -movespeed * Time.deltaTime));
			//transform.position += transform.forward * -movespeed;
		}

		if( Input.GetKey (KeyCode.Space)){
			transform.Translate( new Vector3(0f, movespeed * Time.deltaTime, 0f));
		}

		if( Input.GetKey (KeyCode.LeftShift)){
			transform.Translate( new Vector3(0f, -movespeed * Time.deltaTime, 0f));
		}
		if( Input.GetKey(KeyCode.A)){
			// OY-ler angles
			transform.Rotate (0f, -turnspeed * Time.deltaTime, 0f);
			// don't do math with transform.rotation
		}
		if( Input.GetKey(KeyCode.D)){
			transform.Rotate (0f, turnspeed  * Time.deltaTime , 0f);
		}
	}
}
