using UnityEngine;
using UnityEngine.Serialization;
using System.Collections;
using System.Collections.Generic;




[System.Serializable]



public class Road
{
	public GameObject prefab;
	public int angle;
	
	public Road(GameObject _prefab, int _angle)
	{
		prefab = _prefab;
		angle  = _angle;
	}
}

public class RoadFind
{
	public Road road;
	public int index;

	public RoadFind(Road _road, int _index)
	{
		road = _road;
		index  = _index;
	}
}

[System.Serializable]
public class RoadStack {
	public Road[] roads;
}

[System.Serializable]
public class Generator : MonoBehaviour



{
	// Позиция, по приблжению к которой проходит цикл генерации
	public Transform player;

	public ThemeManager tmanager;
	public int finIndex;

	//public AudioClip[] audios;
	//public int playAudioOnAwakeById = 0;

	[Header("Road Templates")]
	[SerializeField]
	public RoadStack[] roadT;
	// Количество генерируемых префабов
	[Header("Options")]
	[Range(2,100)]
	public int sectionCount = 10;

	// Максимальный угол поворота дороги
	[Range(0,180)]
	public int maxRoadAngle = 90;

	// Количество оставляемых дорог за объектом
	[Range(0,100)]
	public int saveRoadBehind = 5;

	// Дистанция до новой прорисовки
	[Range(0,10000)]
	public int distanceToGeneration = 200;

	// Хелперы
	Transform currentRoad;
	Transform previousRoad;
	//AudioSource source;
	RoadStack roadTemplates;
	//int currentAudioId;

	int currAngle = 0;

	List <GameObject> roads = new List<GameObject> ();

	void Start ()
	{
		//source = GetComponent<AudioSource>();
		previousRoad = transform;

		//source.clip = audios[playAudioOnAwakeById];
		//if (source.clip != null) {
		//	source.Play ();
		//	currentAudioId = playAudioOnAwakeById;

	//	ChangeRoadTemplates();
		//}
		ChangeRoadTemplates();
		roadTemplates = roadT [0];
		if(roadTemplates == null) return;

		GenerateRoadNew();
	
	}

	void Update()
	{

		finIndex = tmanager.themeIndex;


		//AudioHandler ();
		if(GetLength () > distanceToGeneration) return;
		if(roadTemplates == null) return;

		ChangeRoadTemplates();

		RemoveRoad();
		GenerateRoadNew();
	}

	//private void AudioHandler() {
	//	if (source.clip == null) return;
	//	if (source.isPlaying) return;
	//	source.clip = GetNextAudioClip ();
	//	source.Play ();
	//	ChangeRoadTemplates ();
	//}
	//	ChangeRoadTemplates ();

	//private AudioClip GetNextAudioClip() {
	//	currentAudioId = (currentAudioId >= audios.Length-1) ? 0 : (currentAudioId + 1);
	//	return audios [currentAudioId];
	//}

	private void ChangeRoadTemplates() {
		//roadTemplates = roadT [currentAudioId];
		roadTemplates = roadT [finIndex];
	}


















	private float GetLength()
	{
		Vector3 endPos   = previousRoad.position;
		Vector3 startPos = player.position;
		
		Vector3 offset = new Vector3(endPos.x - startPos.x, endPos.y - startPos.y, endPos.z - startPos.z);
		float length   = Mathf.Abs(Mathf.Sqrt(offset.x*offset.x + offset.y*offset.y + offset.z*offset.z));
		
		return length;
	}

	private void RemoveRoad(){
		GameObject[] temp = roads.ToArray ();

		saveRoadBehind = temp.Length < saveRoadBehind ? temp.Length : saveRoadBehind;

		for (int i = 0; i < temp.Length - saveRoadBehind; i++)
			Destroy (temp [i]);

		roads.RemoveRange (0,roads.Count - saveRoadBehind);
	}

	private void GenerateRoadNew()
	{
		for(int i = 0; i < sectionCount; i++)
		{
			CreateRoadObject();
			CreateRoad();
			previousRoad = currentRoad;
		}
	}

	private RoadFind FindMaxRoad()
	{
		Road max  = roadTemplates.roads[roadTemplates.roads.Length-1];
		int index = 0;

		for(int i = 0; i < roadTemplates.roads.Length; i++)
		{
			if(max.angle < roadTemplates.roads[i].angle)
			{
				max = roadTemplates.roads[i];
				index = i;
			}
		}

		return new RoadFind(max, index);
	}

	private RoadFind FindMinRoad()
	{
		Road min  = roadTemplates.roads[0];
		int index = 0;
		
		for(int i = 0; i < roadTemplates.roads.Length; i++)
		{
			if(min.angle > roadTemplates.roads[i].angle)
			{
				min = roadTemplates.roads[i];
				index = i;
			}
		}
			
		return new RoadFind(min, index);
	}

	private int RandomizeDirection()
	{
		int direction = 0;
		
		if(currAngle < maxRoadAngle && currAngle > -maxRoadAngle)
		{
			direction = Random.Range(0, roadTemplates.roads.Length);
		}
		else if(currAngle >= maxRoadAngle)
		{
			direction = FindMinRoad().index;
		}
		else if(currAngle <= -maxRoadAngle)
		{
			direction = FindMaxRoad().index;
		}

		return direction;
	}

	private void CreateRoad()
	{

		// Конечная точка последней сгенерированной дороги
		Transform transform_end 	= previousRoad.Find("End");

		// Отладка трансформа 
		// Поскольку первая дорога генерируется на старте объекта, 
		// на который навесили скрипт, этот объект не является
		// потомком класса Road
		transform_end	= transform_end ? transform_end : transform;

		// Начальная точка новой сгенерированной дороги
		Transform transform_start = currentRoad.Find("Start");

		// Поворот
		float angle = transform_end.localEulerAngles.y + previousRoad.rotation.eulerAngles.y;
		currentRoad.rotation = Quaternion.Euler( new Vector3(0, angle, 0) );

		// Позиция
		Vector3 offset = currentRoad.position - transform_start.position;
		currentRoad.position = transform_end.position + offset;
	}

	private void CreateRoadObject()
	{
		int roadIndex = RandomizeDirection();

		GameObject road = ((GameObject)Instantiate(roadTemplates.roads[roadIndex].prefab, previousRoad.position, previousRoad.rotation));
		currentRoad 	= road.transform;

		// Сохраняем угол нового поворота
		currAngle += roadTemplates.roads[roadIndex].angle;

		// Добавляем дорогу в массив
		roads.Add (road);
	}
	
}


