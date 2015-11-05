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
				listOfTrees[x].transform.localScale *= 1.1f;
			}
		}
	}
}
