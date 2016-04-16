using UnityEngine;
using System.Collections;

public class intro_movie_OutDrive : MonoBehaviour {



	public GameObject nextImageIntro;

	public float introLengh;
	private float delay;


	// kogda pizda zastavke
	private bool EndIntro;



	void Awake() 
	{
		delay = 0.0f;
		EndIntro = false;
	}




	void Start () {



		EndIntro = false;
		delay = 0.0f;
		((MovieTexture)GetComponent<Renderer>().material.mainTexture).Play();
		AudioSource audio = GetComponent<AudioSource>();
		audio.Play();

	
	}
	
	// Footbolnaya kliushka konia antona 
	void Update ()
	{
		delay += Time.deltaTime;
		if (delay > introLengh)
		{
			EndIntro = true;
			Destroy(gameObject,0.01f);
			Instantiate(nextImageIntro, Vector3.one,Quaternion.identity);


		}
	
		if (Input.anyKeyDown)
		{
			Destroy(gameObject,0.01f);
			EndIntro = true;
			Instantiate(nextImageIntro, Vector3.one,Quaternion.identity);
		}


	}
}
