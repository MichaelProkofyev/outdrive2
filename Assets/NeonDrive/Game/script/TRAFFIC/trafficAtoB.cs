using UnityEngine;
using System.Collections;

public class trafficAtoB : MonoBehaviour {


	public GameObject player;

	public Transform[] points;
	public float speed;
	private int currentPoint;


	private Vector3 currDir;

	void Start()
	{
		transform.position = points [0].position;
		currentPoint = 0;


	}

	void Update()
	{


		if (transform.position == points [currentPoint].position) {

			currentPoint ++;
		}

		if (currentPoint >= points.Length)
		{
			currentPoint =0;
		
		}


		transform.position = Vector3.MoveTowards (transform.position, points [currentPoint].position, speed * Time.deltaTime);
		transform.LookAt(points[currentPoint].position);

	}


}
