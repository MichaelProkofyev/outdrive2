using UnityEngine;
using System.Collections;

public class intro_image : MonoBehaviour {



	public GameObject nextPrefab;
	public bool loadMainMenu;


	void Update ()
	{
		
	
		if (Input.anyKeyDown)
		{

			Instantiate(nextPrefab,Vector3.one,Quaternion.identity);

			if(loadMainMenu ==true){
				Application.LoadLevel(1);
			}
			Destroy(gameObject);
		}


	}
}
