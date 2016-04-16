using UnityEngine;
using System.Collections;

public class RESTARTINGAMEOVER : MonoBehaviour {





	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
	
		if(Input.GetButtonDown("Restart")){
			Application.LoadLevel(3);
		}else if(Input.GetButtonDown("Cancel")){
			Application.LoadLevel(1);
		}

	}
}
