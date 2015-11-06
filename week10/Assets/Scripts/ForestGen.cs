using UnityEngine;
using System.Collections;
using System.Collections.Generic; //needed for Lists

public class ForestGen : MonoBehaviour {

	public GameObject treePrefab; //assign in inspector
	List<GameObject> listOfTrees = new List<GameObject>();

	// Use this for initialization
	void Start () {
		/*int treeCounter = 0; // how many trees have been cloned
		while (treeCounter < 49){ // keep repeating all the code until condition is false
			GameObject newTree = (GameObject)Instantiate ( treePrefab, new Vector3( Random.Range(-10f, 10f), 1f, Random.Range (-10f, 10f)), Quaternion.identity); 
			listOfTrees.Add(newTree);
			treeCounter++;
		}*/
		while (listOfTrees.Count < 49){ // keep repeating all the code until condition is false
			GameObject newTree = (GameObject)Instantiate ( treePrefab, new Vector3( Random.Range(-10f, 10f), 1f, Random.Range (-10f, 10f)), Quaternion.identity); 
			listOfTrees.Add(newTree);
		}
	}
	
	// Update is called once per frame
	void Update () {
		// if I press Up, grow all the trees
		if(Input.GetKeyDown(KeyCode.UpArrow)){
			for ( int x = 0; x < listOfTrees.Count; x++){
				listOfTrees[x].transform.localScale = new Vector3( listOfTrees[x].transform.localScale.x,
				                                                   listOfTrees[x].transform.localScale.y * 1.3f,
				                                                   listOfTrees[x].transform.localScale.z);
			}
		}

		//Click to plant new trees
		Ray mouseRay = Camera.main.ScreenPointToRay( Input.mousePosition);
		RaycastHit mouseRayHit = new RaycastHit();
		if (Input.GetMouseButtonDown (0)){ // if i left click, then...
			if(Physics.Raycast(mouseRay, out mouseRayHit, 100f)){
				GameObject aTree = (GameObject)Instantiate(treePrefab, mouseRayHit.point + new Vector3(0f,1f,0f), Quaternion.identity);
				listOfTrees.Add(aTree);  
			}
		}
		if (Input.GetMouseButtonDown(1)){
			if(Physics.Raycast(mouseRay, out mouseRayHit, 100f)){
				GameObject thingWeClickedOn = mouseRayHit.transform.gameObject;
				if ( listOfTrees.Contains (thingWeClickedOn)){
					listOfTrees.Remove(thingWeClickedOn);
					Destroy (thingWeClickedOn);
				}
			}
		}
	}
}
