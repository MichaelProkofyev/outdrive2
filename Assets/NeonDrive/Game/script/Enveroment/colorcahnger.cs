using UnityEngine;
using System.Collections;

public class colorcahnger : MonoBehaviour {



	public Material floorMat;
	public Color[] colorGrid;

	private Color randcolor;
	public int randomiser;



	public int count;
	public float interval;

	void Update () {


		if (Input.GetKeyDown(KeyCode.Backspace)) {

			randomiser = Random.Range (0, 4);
			randcolor = colorGrid [randomiser];
			floorMat.SetColor ("_colorgrid", randcolor);	

		}


	
			

	}






	}
	