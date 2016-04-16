using UnityEngine;
using System.Collections;

public class ContactSpawn : MonoBehaviour {


	
	public SoundManager soundCollManager;
	public nitroCounter ncoun;
	public GameObject spawned;


	///public Transform explosionPrefab;
	void OnCollisionEnter(Collision collision) {


		if (collision.gameObject.tag == "ROADCOLLISION" ||collision.gameObject.tag == "TRAFFICCAR" ) {
			ContactPoint contact = collision.contacts [0];
			Quaternion rot = Quaternion.FromToRotation (Vector3.up, contact.normal);
			Vector3 pos = contact.point;
			soundCollManager.playCollision = true;

			if (ncoun.speed > 20) {
				Instantiate (spawned, pos, rot);
			}
		}
	}
}
