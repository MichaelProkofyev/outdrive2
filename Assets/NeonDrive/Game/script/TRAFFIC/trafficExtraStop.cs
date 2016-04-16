using UnityEngine;
using System.Collections;

public class trafficExtraStop : MonoBehaviour {

	public trafficCarManager traffC;


	void OnTriggerEnter(Collider other)
	{


		if (other.CompareTag ("TRAFFICCAR")) {

			traffC.finspeed = 0;
		}

	}

	void OnTriggerExit(Collider other){

		if (other.CompareTag ("TRAFFICCAR")) {
			
			traffC.finspeed = 5;
		}

	}
}
