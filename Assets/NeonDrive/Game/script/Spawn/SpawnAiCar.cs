using UnityEngine;
using System.Collections;

public class SpawnAiCar : MonoBehaviour {


	float minTime = 5.0f;
	float maxTime = 10.0f;
	public float Ttime;




	public Transform spawnTransform;
	public GameObject spawnedGO;

	private float distToplayer;
	//float maxDistance = 2800;



	void Start () 
	{
		StartCoroutine( AutoSpam() );
	}

	void Update()
	{
		//distToplayer = Vector3.Distance (spawnedGO.transform.position, GameObject.FindWithTag ("Player").transform.position);

		if(Input.GetKeyDown(KeyCode.I))
		{
			//if(distToplayer <maxDistance)
			//{
			Instantiate(spawnedGO,new Vector3(spawnTransform.position.x,spawnTransform.position.y,spawnTransform.position.z),Quaternion.identity);
			//}
		}
	}

	

	

	
	IEnumerator AutoSpam() 
	{
		while(true)
		{
			Ttime = Random.Range(minTime, maxTime);
			yield return new WaitForSeconds(Ttime);

				//if(distToplayer <maxDistance)
				//{
				Instantiate(spawnedGO,new Vector3(spawnTransform.position.x,spawnTransform.position.y,spawnTransform.position.z),Quaternion.identity);
				//}



		}
	}

}
