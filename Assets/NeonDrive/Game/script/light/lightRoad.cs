using UnityEngine;
using System.Collections;

public class lightRoad : MonoBehaviour {

	public float duration = 1.0F;
	public Light lt;
	void Start() {
		lt = GetComponent<Light>();
	}
	void Update() {
	
		lt.intensity = duration;
	}
}
