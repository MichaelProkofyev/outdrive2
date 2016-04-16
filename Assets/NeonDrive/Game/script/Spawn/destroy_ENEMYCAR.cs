using UnityEngine;
using System.Collections;

public class destroy_ENEMYCAR : MonoBehaviour {

	private float distTP;
	float maxdisttoplayer = 800.0f;



	void Start(){
		Destroy (gameObject, 30);
	}

	void Update () {
		distTP = Vector3.Distance (gameObject.transform.position, GameObject.FindWithTag ("Player").transform.position);

		if (distTP > maxdisttoplayer) {
			Destroy(gameObject);
		}

		if (gameObject.transform.position.y < -1500.0f)
		{
			Destroy(gameObject);
		}
	
	}
}
