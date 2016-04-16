using UnityEngine;
using System.Collections;

public class teleport : MonoBehaviour {


	public GameObject player;

	public bool yesTeleport;

	

	void FixedUpdate () {
			
		if (yesTeleport == true) {

			player.transform.position += new Vector3 (0, 0, 7200);
			yesTeleport = false;
		}

	}
}
