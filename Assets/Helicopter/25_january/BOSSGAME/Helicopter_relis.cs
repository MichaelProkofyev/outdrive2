using UnityEngine;
using System.Collections;

public class Helicopter_relis : MonoBehaviour {


	private GameObject playerTr;

	public Vector3 offset;

	private Vector3 heliTramsform;

	public float Down;
	
	public float speedDown;

	public float LIFE_TIME_HELI;
	private float lth = 0.0f;

	public GameObject Debr;



	void OnTriggerEnter(Collider other) 
	{

			
			Instantiate (Debr, this.transform.position, Quaternion.identity);
			Destroy(gameObject);

		
	}




	public void DestrHeli()
	{
			Instantiate (Debr, this.transform.position, Quaternion.identity);
			Destroy(gameObject);
	}


	void Start ()

	
	{



		Vector3 DV = new Vector3 (0, Down, 0);

		playerTr = GameObject.FindWithTag ("Player");

		heliTramsform = playerTr.transform.position + offset+DV;

		gameObject.transform.position = heliTramsform;




	
	}
	


	void Update () 
	{
		lth += Time.deltaTime;
		if (lth > LIFE_TIME_HELI * 60)
		{
			DestrHeli();
		}


		Vector3 DV = new Vector3 (0, Down, 0);
		if (Down > 0.0f)
		{
			Down -= Time.deltaTime*speedDown;
		}

		heliTramsform = playerTr.transform.position + offset + DV;
		
		gameObject.transform.position = heliTramsform;

	
	}
}
