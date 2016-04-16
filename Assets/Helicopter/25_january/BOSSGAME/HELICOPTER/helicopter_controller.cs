using UnityEngine;
using System.Collections;

public class helicopter_controller : MonoBehaviour {


//	public enveroment_BOSS HeliCopter;
	public GameObject HelicopterObject;




	public GUI_Timer TimerGamePlay;



	private bool yesHeli;


	public HELI_GUN heligun;

	public float accuraty = 1.0f;
	public float maxAccuratyDegradation = 10.0f;
	private float accDegrad;


	public float degradationFactor = 1.5f;
	public float AimFactor = 1.5f;


	public int buletsPerShots = 1;


	void Start(){
		yesHeli = true;
	}

	// Update is called once per frame
	void Update () {



//		if(TimerGamePlay.publicMinute<1)
//		{
//			yesHeli = false;
//			HelicopterObject.SetActive(false);
//		}
//


//		if(TimerGamePlay.publicMinute>1)
//		{
//			yesHeli = true;
//			HelicopterObject.SetActive(true);
//		}


	
	
	
	{
		if (accDegrad > 0.5f) 
		{
			accDegrad -= Time.deltaTime * AimFactor;
		}

		if (Input.GetKey (KeyCode.LeftShift))
		{
			if(accDegrad< maxAccuratyDegradation)
			{
			accDegrad += Time.deltaTime * degradationFactor;
			}
		}

		if (Input.GetKey (KeyCode.LeftShift))
		{
			if(accDegrad< maxAccuratyDegradation)
			{
				accDegrad += Time.deltaTime * degradationFactor;
			}
		}
	
		accuraty = accDegrad;
		heligun.random = accuraty;

	//	heligun.maxShotsPerFire = Mathf.Clamp ((TimerGamePlay.publicMinute + buletsPerShots+TimerGamePlay.publicHours*10), 1, 30);

	}




}
}
