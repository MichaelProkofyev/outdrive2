using UnityEngine;
using System.Collections;

public class heliEnable : MonoBehaviour {

	public GameObject heli;

	private bool yesHeli;
	private float heliLerp;
	private float hel;

	public float speed;



	// Use this for initialization
	void Start () {

		yesHeli = false;
	
	}
	
	// Update is called once per frame
	void Update () {

		if (Input.GetKeyDown(KeyCode.F2))
		{				
				yesHeli = true;


		}

		if (Input.GetKeyDown(KeyCode.F1))
		{				
			yesHeli = false;
			
			
		}



		if (yesHeli == true && hel <1.1f) {

			hel += Time.deltaTime*speed;
		}

		if (yesHeli == false && hel >-0.01f) {

			hel -= Time.deltaTime*speed;
		}


		heliLerp = Mathf.Lerp (200.0f,45.0f, Mathf.Clamp (hel, 0, 1));

		Vector3 heliPos = new Vector3 (heli.transform.position.x, heliLerp, heli.transform.position.z);
		heli.transform.position = heliPos;

		if (hel < 0.2f) {
			heli.SetActive (false);
		}
		else
		{
			heli.SetActive(true);
		}

	
	}
}
