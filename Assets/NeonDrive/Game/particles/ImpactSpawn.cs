using UnityEngine;
using System.Collections;

public class ImpactSpawn : MonoBehaviour {


	public SoundManager soundCollManager;
	public nitroCounter ncoun;
	public GameObject[] spawned;


	private float minT;
	private float substT;


	void Update () {




		substT -= Time.deltaTime*1.0f;
		minT = Mathf.Clamp (substT, 0.0f, 1.0f);
	}

	void OnTriggerEnter(Collider other){
			
		if (ncoun.speed > 22 && minT < 0.5f) {		

			soundCollManager.playCollision = true;
			Instantiate (spawned[Random.Range(0,spawned.Length)], gameObject.transform.position, Quaternion.identity);
			substT =1.0f;

		}
	}



}
