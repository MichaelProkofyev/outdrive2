using UnityEngine;
using System.Collections;

public class enveroment_mov : MonoBehaviour {
	public Transform car;
	public Transform targetPref;
	public Vector3 targetCoord;


	

	void FixedUpdate () {

		targetCoord = new Vector3 (car.transform.position.x, 0.0f, car.transform.position.z);
		targetPref.transform.position = targetCoord;
		targetPref.transform.rotation = Quaternion.identity;
		
	}
}
