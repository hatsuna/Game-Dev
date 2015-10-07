using UnityEngine;
using System.Collections;

public class TransformMove : MonoBehaviour {


	// Update is called once per frame
	void Update () {
		if(Input.GetKey(KeyCode.UpArrow)){
			transform.Translate(0f, 0f, 1f); // Translate does not respect collision
		}
		if(Input.GetKey(KeyCode.DownArrow)){
			transform.Translate(0f, 0f, -1f);
		}
		//mouseinput
		//must be Mouse X
		float mouseX = Input.GetAxis("Mouse X"); // always a number between -1f and 1f
		//when your mouse stays still, Mouse X = 0f
		//moving right = 1f
		//moving left = -1f
		float mouseY = - Input.GetAxis("Mouse Y"); // naturally inverted
		//rotation: X = "pitch", Y = "yaw", Z = "roll"
		transform.Rotate(mouseY, mouseX, 0f);

	}
}
