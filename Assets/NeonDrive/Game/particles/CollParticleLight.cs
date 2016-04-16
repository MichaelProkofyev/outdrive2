using UnityEngine;
using System.Collections;

public class CollParticleLight : MonoBehaviour {

	public float lightfallof;


	void Start () {




		Destroy (gameObject, 3);
	
	}
	
	// Update is called once per frame
	void Update () {

		gameObject.GetComponent<Light>().intensity-= Time.deltaTime * lightfallof;
	
	}
}
