using UnityEngine;
using System.Collections;

public class helliTrigger : MonoBehaviour {

	public GameObject Helicopter;
	public GameObject Bomb;
	private GameObject hhel;

	public Quaternion rotateInstance;

	private bool yeshelli = true;
	private int minBeforSpavn;
	public int spawnMinute = 9;



	void Start(){
		hhel = null;
		yeshelli = true;

		minBeforSpavn = PlayerPrefs.GetInt ("TimeMinuteGirl");
	}

	void OnTriggerEnter(Collider other) 
	{
		minBeforSpavn = PlayerPrefs.GetInt ("TimeMinuteGirl");

		if (other.CompareTag ("Player") && yeshelli == true && minBeforSpavn > spawnMinute) 
		{

			hhel = Instantiate (Helicopter, this.transform.position, rotateInstance) as GameObject;
			yeshelli = false;

		}

	}


	void OnTriggerExit(Collider other) 
	{
		if (other.CompareTag ("Player")) 
		{
			Instantiate(Bomb,hhel.transform.position, Quaternion.identity);
			Destroy(hhel);


		}
		
	}
}


