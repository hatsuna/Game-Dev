using UnityEngine;
using System.Collections;

public class Pathmaker : MonoBehaviour {
/* 	
 	put this on a small sphere, it will drop a "breadcrumb" trail of floor tiles
	DECLARE CLASS MEMBER VARIABLES:
	Declare a private integer called counter that starts at 0;
	Declare a public Transform called floorPrefab, assign the prefab in inspector;
	Declare a public Transform called pathmakerPrefab, assign the prefab in inspector;
*/
	public Transform pathmakerPrefab;
	public Transform floorPrefab;

	private int counter = 0;
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
		if (counter < 50){
			float rand = Random.Range(0.0f, 1.0f);
			if ( rand < 0.25f){
				transform.rotation = Quaternion.Euler(0.0f, 90.0f, 0.0f);
			} else if( rand >= 0.25f && rand <= 0.5f){
				transform.rotation = Quaternion.Euler(0.0f, -90.0f, 0.0f);
			} else if (rand >= 0.95f && rand <= 1.0f){
				Instantiate(pathmakerPrefab, transform.position, transform.rotation);
			}
			Instantiate(floorPrefab, transform.position, Quaternion.Euler (0.0f, 0.0f, 0.0f));
			// fix this line
			pathmakerPrefab.transform.position += (5 * Vector3.forward);

			counter ++;
		}else{
			this.gameObject.SetActive(false);
		}
	}
}
