using UnityEngine;
using System.Collections;

public class destroyRock : MonoBehaviour {

	public Rigidbody self;


	// Use this for initialization
	void Start () {


		Vector3 randV = new Vector3 (Random.Range (-5, 5), Random.Range (-5, 5), Random.Range (-4, 5));
		self.AddForce (randV, ForceMode.Impulse);
	
	}
	
	// Update is called once per frame
	void Update () {
		Destroy(gameObject, 18);
	
	}
}
