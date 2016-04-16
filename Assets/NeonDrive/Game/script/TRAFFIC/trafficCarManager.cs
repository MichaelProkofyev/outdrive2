using UnityEngine;
using System.Collections;

public class trafficCarManager : MonoBehaviour {


	public Rigidbody carTraffic;
	public trafficAtoB traffatb;

	public int minSpeed;
	public int maxSpeed;
	public int speedComens;
	public float finspeed;

	private float speedAddet;

	public int maxAccel;
	public int minAccel;

	public float accelFactor;
	public bool YesAccel;


	void Start () {

		accelFactor = Random.Range (minAccel, maxAccel);
		traffatb.enabled = true;
		carTraffic.isKinematic = true;
		finspeed= Random.Range (minSpeed, (maxSpeed-speedComens));
		traffatb.speed = finspeed;
		YesAccel = true;


	}
	void Update(){

		traffatb.speed = Mathf.Clamp (finspeed, 0, maxSpeed);

		if (YesAccel == true && traffatb.speed < maxSpeed)
		{
			finspeed += Time.deltaTime*accelFactor;
		}

	}

	void OnCollisionEnter(){
		traffatb.enabled = false;
		carTraffic.isKinematic = false;
		Destroy (gameObject, 6);

	}



}
