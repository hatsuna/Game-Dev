using UnityEngine;
using System.Collections;

public class PlayerController : MonoBehaviour {

	public float movespeed = 5f;

	// Update is called once per frame
	void Update () {
		if(Input.GetKey(KeyCode.W)){
			transform.position += new Vector3(0f, 0f, 1f) * Time.deltaTime * movespeed;
			transform.eulerAngles = new Vector3(0f, 0f, 0f);
		}

		Camera.main.transform.position = transform.position + new Vector3(0f, 0f, 1f);
	}
}
