using UnityEngine;
using System.Collections;

public class anykeq : MonoBehaviour {


	void Update () {


		if (Input.anyKey) {
			Application.LoadLevel(1);
		}
	
	}
}
