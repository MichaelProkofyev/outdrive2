using UnityEngine;
using System.Collections;

public class triggerCollider : MonoBehaviour {


	public GameObject boxCollider;





	void OnTriggerEnter(Collider other){


		if(other.CompareTag("Player"))
		
			{
			boxCollider.SetActive(true);
		    }
	}
}
