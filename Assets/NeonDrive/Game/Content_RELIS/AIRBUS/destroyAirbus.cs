using UnityEngine;
using System.Collections;

public class destroyAirbus : MonoBehaviour {

	public float timeD;

	void Start () {
        Destroy(gameObject, timeD);
	
	}
	
	// Update is called once per frame
	void Update () {
	
	}
}
