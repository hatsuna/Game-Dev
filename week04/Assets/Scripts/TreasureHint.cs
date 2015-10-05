using UnityEngine;
using System.Collections;
using UnityEngine.UI;

public class TreasureHint : MonoBehaviour {

	public Transform goalObject;
	public Transform playerObject;
	public Text uiText;

	bool didIWinYet = false;

	// Update is called once per frame
	void Update () {
		if((playerObject.position - goalObject.position).sqrMagnitude > 50f) {
			uiText.text = "you're going realy far away now, this is bad.";
		}

		if(Vector3.Distance ( goalObject.position, playerObject.position ) > 20f) {
			uiText.text = "you're getting closer!!!";
		}

		if(Vector3.Distance ( goalObject.position, playerObject.position) < 5f){
			uiText.text = "press space to win";
			if(Input.GetKeyDown (KeyCode.Space)){
				didIWinYet = true;
			}
		}

		if (didIWinYet){
			uiText.text = "you won";
		}
	}
}
