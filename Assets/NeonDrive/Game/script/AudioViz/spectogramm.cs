using UnityEngine;
using System.Collections;

public class spectogramm : MonoBehaviour {
	public GameObject prefab;
	public int numberOfObjects = 20;
	public float radius = 5f;
	public float offsetF;
	public GameObject[] cubes;


	void Start ()
    {
		for (int i=0; i< numberOfObjects; i++)
        {
			float angle = i*Mathf.PI*2/numberOfObjects;
			float ps = i*offsetF;
			Vector3 pos = new Vector3(ps,0,0);

			Instantiate(prefab,pos,Quaternion.identity);
		}
		cubes = GameObject.FindGameObjectsWithTag ("cubes");
	
	}
	
	// Update is called once per frame
	void Update () {
		float[] spectrum = AudioListener.GetSpectrumData (512, 0, FFTWindow.Hamming);
		float v = AudioListener.volume;
		for (int i = 0; i< numberOfObjects; i ++) {
			Vector3 previousScale = cubes[i].transform.localScale;
			previousScale.y = Mathf.Lerp ( previousScale.y , spectrum[i]*90*v,Time.deltaTime*30);
			cubes[i].transform.localScale = previousScale;

		
		}
	
	}
}
