using UnityEngine;
using System.Collections;

public class GirlOhhAhh : MonoBehaviour {

	public overLerp ovlerpS;


	public AudioClip  heart;

	public float startSound;

	public bool yesSound;



	void Start()
	{
		gameObject.GetComponent<AudioSource> ().Stop();
	
	}


	void Update () {





		if (ovlerpS.FinalOverHeatDN < startSound)
		{

	
		
			yesSound = true;
			gameObject.GetComponent<AudioSource> ().Play();
		  
		}
		else
		{

			yesSound = false;
			gameObject.GetComponent<AudioSource> ().Stop();

		}


	
	}
}
