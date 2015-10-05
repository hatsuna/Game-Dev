using UnityEngine;
using System.Collections;

public class camUpdate : MonoBehaviour {

	public Camera Cam;
	 	
	// Update is called once per frame
	void Update () {
		Cam.transform.position = new Vector3 (transform.position.x, transform.position.y, transform.position.z);
	}
}
