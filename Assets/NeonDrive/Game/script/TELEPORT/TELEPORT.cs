using UnityEngine;
using System.Collections;

public class TELEPORT : MonoBehaviour {

	public GameObject teleportedPrefab;


	public float x;
	public float y;
	public float z;

	void OnTriggerEnter(Collider other){
		if (other.CompareTag ("Player")) {
			teleportedPrefab.transform.position -= new Vector3(x,y,z);
		}
	}
}
