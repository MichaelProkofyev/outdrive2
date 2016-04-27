using UnityEngine;
using System.Collections;

public class HELI_GUN : MonoBehaviour {





	public Material neonFAN;

	public Transform player;
	public Transform forvardTar;
	public Transform backTar;

	private Transform finaltargetTransform;
	private Transform finaltargetAccur;

	LineRenderer lrend;

	public GameObject laserImpact;

	public GameObject MuzzleFlash;

	public AudioClip laserSound;


	public int laserDamage;
	public overLerp ovL;

	public int shotcount = 5;
	private int shots;



	public Rigidbody rocket;

	public GameObject rocketExplosion;
	public Transform rocketTarget;
	public Transform launcher;

	public float rocketSpeed;
	private float rTime;

	public LineRenderer rocketAim;



	private bool yesRockSw;

	
	private Transform accurTT;



	private GameObject imp;

	public float laserDelay;
	private float fireRate;

	private bool yesShotLaser;




	private float fireDelay;
	public float fireDelayMin = 5.0f;
	public float fireDelayMax = 9.0f;
	private bool yesRocket;

	public float pershot;


	public int OVERshotcount = 0;
	public int maxShotsPerFire;

	private bool yesFire;

	private float  secPerFire;

	private bool yesBulletFire;

	public float random;

	private float neonLF;

	private float neonFanLerp;


	void Awake()
	{
		yesFire = false;
		yesRocket = false;
	}

	void Start () {

		shotcount = 0;



		lrend = GetComponent<LineRenderer> ();

	}












	

	void FixedUpdate ()
	{	



		if (Input.GetButton("Boost") || Input.GetAxis("Boost") == 1f) {
			finaltargetTransform = backTar;
		}
		else
		{
			finaltargetTransform = player;
		}

		if (Input.GetButton ("Ebrake")) {
			finaltargetTransform = forvardTar;
		} 
		else
		{
			finaltargetTransform = player;
		}





	}


	private void Shoting()
		
	{
		
		Instantiate (MuzzleFlash, this.transform.position, Quaternion.identity);

		GetComponent<AudioSource> ().PlayOneShot (laserSound);



	


		{ 
			Vector3 dir = new Vector3(player.transform.position.x - transform.position.x - Random.Range(-random, random), 
			                          player.transform.position.y - transform.position.y - Random.Range(-random, random), 
			                          player.transform.position.z - transform.position.z - Random.Range(-random, random)); 
			
			RaycastHit hit; 
			if (Physics.Raycast(transform.position, dir, out hit, 500.0f)) 


			{ 
				GameObject impactLaserFlash = (GameObject)Instantiate(laserImpact,hit.point,Quaternion.identity);
				impactLaserFlash.transform.position = hit.point + hit.normal * 0.01f;
				impactLaserFlash.transform.rotation = Quaternion.identity;

				lrend.SetPosition (0, gameObject.transform.position);
				lrend.SetPosition (1, hit.point);
				Debug.Log(hit.point); 
				if (hit.transform.tag =="Player")
				{
					ovL.FinalOverHeatUP += laserDamage;
				}
			} 

		}

			

					
		
		
		
		}





	

	void Update ()




	     {

		rTime += Time.deltaTime;


		Vector3 Rdir = new Vector3(rocketTarget.transform.position.x, 
		                           rocketTarget.transform.position.y, 
		                           rocketTarget.transform.position.z); 

		rocketAim.SetPosition (0, launcher.transform.position);
		rocketAim.SetPosition (1, Vector3.Lerp(rocketTarget.transform.position,Rdir,Time.deltaTime*0.33f));

		if (rTime >rocketSpeed &&yesRocket == true) {
			// Rigidbody Rock = Instantiate(rocket,rocketTarget.transform.position,rocket.transform.rotation)as Rigidbody;
			GameObject RokExl = Instantiate (rocketExplosion,rocketTarget.transform.position,Quaternion.identity) as GameObject;
			yesRocket = false;

		}



		secPerFire += Time.deltaTime;
		pershot += Time.deltaTime* laserDelay;


		if (secPerFire > fireDelay) 
		    {
			yesFire =true;
			secPerFire = 0.0f;

	     	}	
	
		
		if (OVERshotcount > maxShotsPerFire)
		{
			yesFire = false;
			OVERshotcount =0;




		}

		if (pershot > 2.0f && yesFire == true)
		{
			Shoting();
			OVERshotcount++;
			pershot = 0.0f;	
			fireDelay = Random.Range(fireDelayMin,fireDelayMax);
		}

		if (yesFire == true) {
			neonLF = 1.0f;
			rTime = 0.0f;
			yesRocket = true;
		}
		else
		{
			neonLF=0.0f;
		}


		neonFanLerp = Mathf.Lerp (neonFAN.GetFloat ("_emisblend"), neonLF, Time.deltaTime);
		neonFAN.SetFloat ("_emisblend", neonFanLerp);
	
	}
}
