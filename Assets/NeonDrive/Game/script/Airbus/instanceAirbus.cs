using UnityEngine;
using System.Collections;

public class instanceAirbus : MonoBehaviour {


    public Transform AirSpawn;
    public GameObject Airbus;

    public float minTime;
    public float maxTime;


    private float Ttime;

    private Vector3 AirWPoint;




    void Start()
    {
        StartCoroutine(AutoSpam());
    }

	void Update(){

		if(Input.GetKeyDown(KeyCode.L)){
			GameObject go = Instantiate(Airbus, transform.position, transform.rotation) as GameObject;
			go.transform.parent = gameObject.transform;
		}

		AirWPoint = new Vector3(AirSpawn.position.x, AirSpawn.position.y, AirSpawn.position.z);
	}

	IEnumerator AutoSpam()
	{
		while (true)
		{
			Ttime = Random.Range(minTime, maxTime);


			GameObject go = Instantiate(Airbus, transform.position, transform.rotation) as GameObject;
			go.transform.parent = gameObject.transform;
			yield return new WaitForSeconds(Ttime);
			
			
			
		}
   

   
    }
}