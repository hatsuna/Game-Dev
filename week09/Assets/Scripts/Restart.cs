using UnityEngine;
using System.Collections;
using UnityEngine.UI;

public class Restart : MonoBehaviour {

	// Use this for initialization
	void Start () {
	
	}

	// Update is called once per frame
	void Update () {
		//restart level
		if(Input.GetKeyDown(KeyCode.R)){
			Application.LoadLevel(0);
		}
	}
	
	public void LoadLevel(){
		Application.LoadLevel(0);
	}
}
