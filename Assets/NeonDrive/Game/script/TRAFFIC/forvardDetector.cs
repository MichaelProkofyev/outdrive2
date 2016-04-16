using UnityEngine;
using System.Collections;

public class forvardDetector : MonoBehaviour {

	public trafficCarManager trafMan;
	public Collider forvardDetecter;

	public float brakeFactor;




	void OnTriggerStay(Collider other)
	{
		if (other.CompareTag ("TRAFFICCAR")) {
			trafMan.YesAccel = false;

			if (trafMan.finspeed > 0) {
				trafMan.finspeed -= Time.deltaTime * brakeFactor;
			}
		}
		else
		{
			trafMan.YesAccel = true;
		}
	}

		
}

