using UnityEngine;
using System.Collections;

public class WallMaker : MonoBehaviour {

	public Transform wallmakerPrefab;
	public Transform wallPrefab;

	private int numChildren; //random number between 1, and 2 to determine number of children
	private int doors; // numChildren + 1 = number of doors to make
	private float childCreate; // percent chance to create a child
	private bool createdDoor = false; // determines to either create a door or child next

	void Start(){
		numChildren = Random.Range(1,10);
		doors = numChildren + 1;
		childCreate = 0.65f;
	}
	/*
	 	wallmaker goes straight
			must make a door before making a child
			must make a child before making another door
			then has oppotunites to repeat
		wallmaker deletes itself when it collides with another wall
	*/
	// Update is called once per frame
	void Update () {
	//	if (Input.GetKeyDown (KeyCode.Space)){
			transform.Translate (new Vector3(0, 0, wallPrefab.localScale.z));
			float rand = Random.Range(0.0f, 1.0f);
			if ( rand >= childCreate && (doors > 0 || numChildren > 0)){ // if rand => childCreate
				if(!createdDoor && doors > 0){ // create a door
					transform.Translate(new Vector3 (0, 0, wallPrefab.localScale.z));
					doors--;
					Debug.Log ("Door Created. Door = " + doors);
					createdDoor = true;
				} else if(createdDoor && numChildren > 0){ // createdDoor == true, create a child
					Quaternion rot = transform.rotation;
					rot.eulerAngles += new Vector3 (0.0f, numChildren % 2 * 180.0f + 90.0f, 0.0f);
					if ( rot.eulerAngles.y % 360 == 90.0f){
						Instantiate (wallmakerPrefab, transform.position -  new Vector3(wallPrefab.localScale.x, 0, wallPrefab.localScale.z), rot);
					} else { //if (rot.eulerAngles.y % 360 == 270.0f){	
						Instantiate (wallmakerPrefab, transform.position -  new Vector3(-wallPrefab.localScale.x, 0, wallPrefab.localScale.z), rot);
					}
					numChildren--;
					Debug.Log ("Child Created. Children = " + numChildren);
					createdDoor = false;
				}
			} else { // create a wall behind wallMaker
				Instantiate (wallPrefab, transform.position - new Vector3(0, 0, wallPrefab.localScale.z), transform.rotation);
			}
		//}
	}

	void OnCollisionEnter(Collision collision){
		if (collision.gameObject.tag != "wallmaker"){
			this.gameObject.SetActive(false);
			Destroy(this.gameObject);
		}
	}
}
