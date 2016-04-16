using UnityEngine;
using UnityEngine.Serialization;
using System.Collections;
using System.Collections.Generic;

public class ThemeManager : MonoBehaviour {


	//public Generator generatorRoads;


	public float minTime;
	public float maxTime;
	public float Ttime;

	public int themeIndex;
	public int maxThemeCount;
	public int minThemeCount;




void Start () 
{
	StartCoroutine( AutoSpam() );
}

void Update () 
{
	
}

IEnumerator AutoSpam() 
{
	while(true)
	{
			Ttime = Random.Range(minTime, maxTime);
		yield return new WaitForSeconds(Ttime);
			themeIndex = Random.Range(minThemeCount,maxThemeCount);
	}
}
}