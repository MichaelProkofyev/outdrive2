using UnityEngine;
using System.Collections;

public class helicopter_gun : MonoBehaviour {

	private GameObject PlayerTArget;
	private GameObject shotingBullet;

	//public float shotspeed;
	public float bS;
	public int maxShotsPerFire = 10;
	public GameObject bullet;
	public AudioClip ShotSound;
	public GameObject MuzzleFlash;

	//public float pershot;

	public float accuraty;


	public float shotPerShotDelay =0.2f;


	private Vector3 FireDir;


	public LineRenderer lrend;



	private bool yesFire;
	
	private float  secPerFire;

	
	public float fireDelay;


	public int OVERshotcount = 0;
	public int ShotsPerFire;

	public float pershot = 1.0f;



	public void DelorianImpact()
	{

	}


	void Start () {

		PlayerTArget = GameObject.FindWithTag ("Player");
	
	}
	




	private void Shoting()
		
	{


		
			
		
				
		GetComponent<AudioSource> ().PlayOneShot (ShotSound);
		Instantiate (MuzzleFlash, this.transform.position, Quaternion.identity);
		
		
		
		{


			PlayerTArget = GameObject.FindWithTag ("Player");
			Vector3 dir = new Vector3(PlayerTArget.transform.position.x - transform.position.x - Random.Range(-accuraty, accuraty), 
			                          PlayerTArget.transform.position.y - transform.position.y - Random.Range(-accuraty, accuraty), 
			                          PlayerTArget.transform.position.z - transform.position.z - Random.Range(-accuraty, accuraty)); 
			
			RaycastHit hit; 
			if (Physics.Raycast(transform.position, dir, out hit, 1000.0f)) 
				
				
			{ 
				GameObject impactFlash = (GameObject)Instantiate(bullet,hit.point,Quaternion.identity);
				impactFlash.transform.position = hit.point + hit.normal * 0.01f;
				impactFlash.transform.rotation = Quaternion.identity;
				
				lrend.SetPosition (0, gameObject.transform.position);
				lrend.SetPosition (1, hit.point);
				Debug.Log(hit.point); 
				

				
				if (hit.transform.tag =="Player")
				{
					DelorianImpact();
				}

				

		    	} 
			
     		

		
	
		}
	}


	void Update () {




		secPerFire += Time.deltaTime;
		pershot += Time.deltaTime;



		pershot += Time.deltaTime* shotPerShotDelay;
		
		if (secPerFire > fireDelay) 
		{
			yesFire =true;
			secPerFire = 0.0f;
			
		}	
		

		if (pershot >  bS && yesFire == true)
		{
			Shoting();
			OVERshotcount++;
			
			pershot = 0.0f;	
			
		}

		if (OVERshotcount > maxShotsPerFire)
		{
			yesFire = false;
			OVERshotcount =0;
		
			
			
		}
		






	}
}
