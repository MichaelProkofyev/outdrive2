using UnityEngine;
using System.Collections;

public class SPAWNBYDISTANCE : MonoBehaviour {


	float minTimeGen = 5;
	float maxTimeGen = 35;

	private float timebygen;

	public GameObject self;

	public GameObject spawndePrefab;


	void Start ()
		{
		StartCoroutine (SpawnByDistRandTime ());	
		}
	

	void Update ()
		{
		if (Input.GetKeyDown (KeyCode.I))

			if((self.transform.position - GameObject.FindWithTag("Player").transform.position).sqrMagnitude < 1024*1024)
		    {
			   if((self.transform.position - GameObject.FindWithTag("Player").transform.position).sqrMagnitude > 256*256)
			    {
				Instantiate(spawndePrefab,self.transform.position,self.transform.rotation);
		     	}
		    }
		}


	IEnumerator SpawnByDistRandTime()
		{ 
			while(true)
			{
			timebygen = Random.Range (minTimeGen, maxTimeGen);
			yield return new WaitForSeconds (timebygen);

		    if((self.transform.position - GameObject.FindWithTag("Player").transform.position).sqrMagnitude < 1024*1024)
			{
			    if((self.transform.position - GameObject.FindWithTag("Player").transform.position).sqrMagnitude > 256*256)
				{
				Instantiate(spawndePrefab,self.transform.position,self.transform.rotation);
				}
			}

			}
		}
}
