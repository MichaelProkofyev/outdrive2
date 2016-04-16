using UnityEngine;
using System.Collections;

public class Enter_to_game : MonoBehaviour {


	void Update () {

		if(Input.GetKey(KeyCode.Return))
		{
			Application.LoadLevel(2);
			
		}
	
	}
}
