
	// Made in Faps  (KostyaFPS@Rambler.ru)
	using UnityEngine;
	using System.Collections;
	
	[System.Serializable]
	public class Clips
	{
		int i = 0;
		public AudioClip GetClip(bool random)
		{
			i = random ? Random.Range(0, clips.Length) : (i < clips.Length - 1 ? i + 1 : 0);
			return clips[i];
		}
		public AudioClip[] clips;
	}
	
	public class Music : MonoBehaviour
	{
		public static Music MyMusic;
		bool selFirstAS = true;
		




	public float pitchShift = 1.0f;


		public AudioSource audio1;
		public AudioSource audio2;
	public float swvol;
		
		Clips selClips;
		
		public Clips calmMusics;
		public Clips enemyMusics;
		public Clips batleMusics;
		
		public float fadingMusic = 2f;
		public bool randomClips = true;
		
		public enum EStyleMusic {calm, enemy, batle}
		
		[SerializeField]
		EStyleMusic _styleMusic = EStyleMusic.calm;
		public EStyleMusic styleMusic
		{
			get
			{
				return _styleMusic;
			}
			set
			{
				if (_styleMusic == value)
					return;
				_styleMusic = value;
				switch (_styleMusic)
				{
				case EStyleMusic.calm:
					playCalmMusics();
					break;
				case EStyleMusic.enemy:
					playEnemyMusics();
					break;
				case EStyleMusic.batle:
					playBatleMusics();
					break;
				}
			}
		}
		
		void playMusic()
		{
			selFirstAS = !selFirstAS;
			print("playMusic " + selFirstAS);
			AudioSource _as= ((selFirstAS) ? audio1 : audio2);
			_as.clip = selClips.GetClip(randomClips);
			_as.Play();
		}
		
		void playCalmMusics()
		{
			selClips = calmMusics;
			playMusic();
		}
		void playEnemyMusics()
		{
			selClips = enemyMusics;
			playMusic();
		}
		void playBatleMusics()
		{
			selClips = batleMusics;
			playMusic();
		}
		
		public void nextClip()
		{
			playMusic();
		}
		
		void FixedUpdate()
		{




		AudioSource selAS = (selFirstAS) ? audio1 : audio2;
		try {
			if (selAS.clip.length - selAS.time <= fadingMusic) {
				playMusic ();
				selAS = (selFirstAS) ? audio1 : audio2;
			}
		} catch {
			playMusic ();
			selAS = (selFirstAS) ? audio1 : audio2;
		}

		if (Input.GetKeyDown (KeyCode.E)) {
			audio1.enabled = true;
				audio2.enabled = true;
		}
		if (Input.GetKeyDown (KeyCode.R)) {

			audio1.enabled = false;
			audio2.enabled = false;
		

		}

		AudioSource unselAS = (selFirstAS) ? audio2 : audio1;
			
		selAS.volume = 0.45f;
		unselAS.volume = 0;

		selAS.pitch = pitchShift;

	


		if (Input.GetKeyDown (KeyCode.Q)) {
			nextClip ();

		}

	}


		void Awake()
		{
			MyMusic = this;
		}
		
		void Start()
		{
			selClips = calmMusics;
		}
	}