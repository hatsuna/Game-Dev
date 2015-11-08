using UnityEngine;
using System.Collections;

public class WallMaker : MonoBehaviour {

	/*
		Wallmaker should generate a random number between 0, 1, and 2
		random number  = number of children wallmaker makes
		random number + 1 = number of doors to make
		wallmaker goes straight
			must make a door before making a child
			must make a child before making another door
			then has oppotunites to repeat
		wallmaker deletes itself when it collides with another wall
	*/

	public Transform wallmakerPrefab;
	public Transform floorPrefab;

	private int counter = 0;
	private int maxTiles = 20; // max times per path maker
	private int numChildren = 0;
	private float childCreate = 0.95f;

	void Start(){
		maxTiles = Random.Range (5, 50);
		numChildren = Random.Range (1, 5);
	}
/*
	UPDATE:
		If counter is less than 50, then:
			Generate a random number from 0.0f to 1.0f;
			If random number is less than 0.25f, then rotate 90 degrees;
			... Else if number is 0.25f-0.5f, then rotate -90 degrees;
			... Else if number is 0.95f-1.0f, then instantiate a pathmakerPrefab clone at current position;
	
			Instantiate a floorPrefab clone at current position;
			Move forward (in local space) by 5 units;
			Increment counter;
		Else:
			Destroy self;
*/
	// Update is called once per frame
	void Update () {
		if (counter < maxTiles){
			float rand = Random.Range(0.0f, 1.0f);
			if ( rand < 0.25f){
				transform.Rotate(new Vector3(0, 90, 0));
			} else if( rand >= 0.25f && rand <= 0.5f){
				transform.Rotate(new Vector3(0, -90, 0));
			} else if (rand >= childCreate && rand <= 1.0f){
				if( numChildren > 0){
					Instantiate(wallmakerPrefab, transform.position, transform.rotation);
					numChildren--;
					childCreate += 0.01f;
				}
			}
			Instantiate(floorPrefab, transform.position, Quaternion.Euler (0.0f, 0.0f, 0.0f));
			// fix this line
			transform.Translate(new Vector3(0, 0, 5));

			counter ++;
		}else{
			this.gameObject.SetActive(false);
		}
	}
}
