using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class GameManager : MonoBehaviour {

	public GameObject catPrefab; // assign in inspector
	public GameObject mousePrefab; // assign in inspector

	public static List<GameObject> catList = new List<GameObject>();
	public static List<GameObject> miceList = new List<GameObject>();

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {

		//Click to plant new trees
		Ray mouseRay = Camera.main.ScreenPointToRay( Input.mousePosition);
		RaycastHit mouseRayHit = new RaycastHit();
		if (Input.GetMouseButtonDown (0)){ // if i left click, then...
			if(Physics.Raycast(mouseRay, out mouseRayHit)){
				if (mouseRayHit.collider.gameObject.tag != "Wall"){
					GameObject aCat = (GameObject)Instantiate(catPrefab, mouseRayHit.point + new Vector3(0f,1f,0f), Quaternion.identity);
					catList.Add(aCat); 
				}
			}
		}
		if (Input.GetMouseButtonDown(1)){
			if(Physics.Raycast(mouseRay, out mouseRayHit)){
				if (mouseRayHit.collider.gameObject.tag != "Wall"){
					GameObject aMouse = (GameObject)Instantiate(mousePrefab, mouseRayHit.point + new Vector3(0f,1f,0f), Quaternion.identity);
					miceList.Add(aMouse);
				}
			}
		}	
	}
}
