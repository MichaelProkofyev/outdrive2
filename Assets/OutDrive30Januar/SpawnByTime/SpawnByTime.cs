using UnityEngine;
using System.Collections;

public class SpawnByTime : MonoBehaviour {

	public GameObject SpawnPrefab;

	private float helilifetime = 3;

	public float FirstSpawnTime; 

	private float FSTminut;
	private float timeCount;






	private Quaternion ang;

	private GameObject heliSPAWNED;
	private float finHeliLife;





	void Start () 
	{


		ang = new Quaternion (0.14f, 0.67f, 0.15f, 0.7f);

		timeCount = 0.0f;
	
	}
	


	public void SpawnObject()
	{

		finHeliLife = helilifetime * 60;
		heliSPAWNED = Instantiate (SpawnPrefab, this.transform.position, ang) as GameObject;
		Debug.Log("Vetaliy Kondakow delaet OTCOC. Vitalya sasay");

		timeCount = 0.0f;



	}


	void Update ()
	
	
	{
		timeCount += Time.deltaTime;

		FSTminut = FirstSpawnTime * 60.0f;




	


			if (timeCount > FSTminut ) 
			{
				timeCount = 0.0f;
				SpawnObject();

			}




	
	}
}
