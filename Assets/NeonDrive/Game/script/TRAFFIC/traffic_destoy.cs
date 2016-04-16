using UnityEngine;
using System.Collections;

public class traffic_destoy : MonoBehaviour {

	public GameObject destroyed;
	void OnTriggerEnter(Collider other)
	{
		
		
		if (other.CompareTag ("TRAFFICCAR")) {
			
			Destroy(destroyed,1);
		}
		
	}
}
