using UnityEngine;
using System.Collections;

public class trafficSpawn : MonoBehaviour {

	public GameObject traffic;
	private int minTime = 1;
	private int maxTime = 4;

	private int timeG;

	void Start () {
		StartCoroutine (SpawnByRandTime ());	
	}

	IEnumerator SpawnByRandTime()
	{ 
		while(true)
		{
			timeG = Random.Range (minTime, maxTime);
			yield return new WaitForSeconds (timeG);
			Instantiate(traffic,transform.position,transform.rotation);
				

			
		}
	}


}
