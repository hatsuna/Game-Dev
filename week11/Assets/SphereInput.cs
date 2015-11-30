using UnityEngine;
using System.Collections;

public class SphereInput : MonoBehaviour {

	Animator myAnimator; //assign using getComponent;

	// Use this for initialization
	void Start () {
		myAnimator = GetComponent<Animator>(); // cache shortcut
	}
	
	// Update is called once per frame
	void Update () {
		if(Input.GetKey (KeyCode.Space)){
			myAnimator.SetBool("IsMoving", true);
			transform.position += transform.forward * 0.5f; // move forward
		}
		else{
			myAnimator.SetBool("IsMoving", false);
		}
	}
}
