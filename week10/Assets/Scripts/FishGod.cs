using UnityEngine;
using System.Collections;
using System.Collections.Generic; // to use lists

public class FishGod : MonoBehaviour {

	public Fish fishPrefab; // the fish prefab we clone
	List<Fish> allTheFish = new List<Fish>(); // list of all the fish clones

	// Use this for initialization
	void Start () {
		int fishCount = 0; // Remember how many fish we have made
		while (fishCount < 100){
			Fish newFishClone = (Fish)Instantiate ( fishPrefab, Random.insideUnitSphere * 100f, Random.rotation);
			newFishClone.transform.localScale *= Random.Range (1.0f, 5.0f);
			newFishClone.GetComponent<Renderer>().material.color = new Color(Random.value, Random.value, Random.value, 1);
			allTheFish.Add(newFishClone);
			fishCount ++;
		}
	}
	
	// Update is called once per frame
	void Update () {
		if (Input.GetKeyDown(KeyCode.Space)){ // is space is pressed, fish converge on (25,13,17)
			foreach(Fish fish in allTheFish){
				fish.SetDestination(new Vector3(25f, 13f, 17f));
			}
		}

		// mouse cursor raycast
		Ray ray = Camera.main.ScreenPointToRay (Input.mousePosition);
		RaycastHit rayHit = new RaycastHit();
		if(Physics.Raycast( ray, out rayHit, 100f)){
			Debug.DrawRay(ray.origin, ray.direction * rayHit.distance, Color.cyan);
			foreach(Fish fish in allTheFish){
				fish.SetDestination(rayHit.point);
			}
		}

	}
}
