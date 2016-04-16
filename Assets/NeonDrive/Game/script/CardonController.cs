using UnityEngine;
using System.Collections;

public class CardonController : MonoBehaviour {

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
	
	}

	void OnTriggerEnter(Collider other){
		if (other.gameObject.tag == "Player") {
			other.gameObject.GetComponent<VehicleParent>().SetBrake(-1);
//			Rigidbody rb = other.gameObject.GetComponent<Rigidbody>();
//			rb.velocity = new Vector3(rb.velocity.x, rb.velocity.y*0.8f, rb.velocity.z);

//			GetComponent<Rigidbody>().velocity = new Vector3(GetComponent<Rigidbody>().velocity.x, GetComponent<Rigidbody>().velocity.y*0.8f, GetComponent<Rigidbody>().velocity.z);
//			GetComponent<Rigidbody>().angularVelocity = new Vector3(-GetComponent<Rigidbody>().angularVelocity.x * 1.0f, GetComponent<Rigidbody>().angularVelocity.y*0.5f, -GetComponent<Rigidbody>().angularVelocity.z * 1.0f);


		}
	}
}
