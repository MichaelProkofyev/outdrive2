using UnityEngine;
using System.Collections;


public class sun : MonoBehaviour
{
	public Transform playerPos;
	private Vector3 distp;
	
	private void Awake()
	{
		distp = playerPos.position - transform.position;
		transform.rotation = Quaternion.identity;
	}
	void Update()
	{
		transform.position = playerPos.position - distp;
		transform.rotation = Quaternion.identity;
	}
}