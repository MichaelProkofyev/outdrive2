using UnityEngine;
using System.Collections;

public class restartOnZeroHeight : MonoBehaviour {


	public Transform carPl;

	public Vector3 zeroHeight;
	public float zeroDet;


	void Update () {

		//zeroHeight = new Vector3 (carPl.transform.position.x, carPl.transform.position.y, carPl.transform.position.z);

		zeroDet = carPl.transform.position.y;
		if (zeroDet < -1.0f) {
			Application.LoadLevel("test");
		}

	

	}
}
