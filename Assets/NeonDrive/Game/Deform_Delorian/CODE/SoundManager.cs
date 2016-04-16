using UnityEngine;
using System.Collections;

public class SoundManager : MonoBehaviour {

	public AudioClip[] collisionSound;

	public bool playCollision;


	void Update () {
		if (playCollision == true) 
		{
			gameObject.GetComponent<AudioSource>().clip= collisionSound[Random.Range(0,collisionSound.Length)];
			gameObject.GetComponent<AudioSource>().Play();
			playCollision =false;
		}
	
	}
}
