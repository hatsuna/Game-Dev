using UnityEngine;
using System.Collections;
using UnityEngine.UI;

public class hints : MonoBehaviour {
	public Text textUI;
	public Transform goal;
	public Transform player;
	public Transform startingzone;
	public Transform pillar;
	public Transform pyramid;
		
	float distance(Vector3 a, Vector3 b){
		return ((a - b).magnitude);
	}

		// Update is called once per frame
		void Update () {
			string buffer = "";
			if (distance(startingzone.position, player.position) < 20){
				buffer += "You only get one shot, try to find the buried treasure!";
			}
		if (distance (pillar.position, player.position) < 20){
			buffer += "This is a pillar. Not a treasure.";
		}
		if (distance (pyramid.position, player.position) < 20){
			buffer += "I don't have a way of getting up to that thing... Not that I'd want to anyway.";
		}
		if (player.position.z < 0f || player.position.z > 450f || player.position.x > 450f || player.position.x < 120f) {
			buffer += "The world's end is up ahead, I don't think you wanna go this way.";
		}
		if (distance(goal.position, player.position) < 200f && distance(goal.position, player.position) > 50f){
			buffer += "That water under the sun looks strange...";
		}
		if (distance(goal.position, player.position) <= 5f){
			buffer += "I wonder what could be down here...";
		}
		textUI.text = buffer;
	}
}
