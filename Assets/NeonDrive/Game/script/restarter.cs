using UnityEngine;
using System.Collections;

public class restarter : MonoBehaviour {

	public int scenIndex ;
	void Update () {
		if(Input.GetButtonDown("Restart"))
		//if(Input.GetKeyDown(KeyCode.R))   
		{
			Application.LoadLevel(scenIndex);
		}else if(Input.GetButtonDown("Cancel"))
		{
			Application.LoadLevel(1);
		}
	
	}
}
