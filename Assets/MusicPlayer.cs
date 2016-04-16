using UnityEngine;
using System.Collections;

public class MusicPlayer : MonoBehaviour {
    public static AudioClip[] musicList = new AudioClip[0];
    public string musicPath;

   
    [System.Serializable]
    public class MusicData
    {
        public float lenght;
        public string authorName;
        public string musicName;
    }
    public AudioClip playing;
    public MusicData playingData;
    public AudioSource source;
    public MusicPlayerHUD hud;

    public float lowPitch;
    public float startFadeTime;
    public float endFadeTime;

    public static float volume = 1;
    private float currentPitch = 1;
    public float pitch = 1;
    public static MusicPlayer instance;
    public float pauseVolumeMult = 0.3f;
    private float currentVolume;
    
	// Use this for initialization
    void Awake()
    {
        source.volume = 0;
        instance = this;
    }
	void Start () {
        if(musicList.Length == 0)
       musicList = GetMusic(musicPath);
       PlayRandom();
	}
	
    public AudioClip[] GetMusic(string path)
    {
        return Resources.LoadAll<AudioClip>(path);
    }

    public MusicData GetMusicData(AudioClip clip)
    {
        MusicData data = new MusicData();
        data.lenght = clip.length;

        string[] parts = clip.name.Split('-');
        data.authorName = parts[0];
        data.musicName = parts[1];
        return data;
    }

    public void Play(int i)
    {
        playing = musicList[i];
        playingData = GetMusicData(playing);
        source.clip = playing;
        source.Play();
        hud.SetTexts();
        hud.Show();
    }

    public float GetPlayingTime()
    {
        return source.time;
    }
    public void PlayRandom()
    {
        int i = Random.Range(0,musicList.Length);   
        Play(i);
    }


	// Update is called once per frame
	void Update () {
        if (Time.timeScale > 0)
        {
            if (startFadeTime > 0)
                if (GetPlayingTime() < startFadeTime)
                {
                    currentVolume = Mathf.Lerp(0, volume, GetPlayingTime() / startFadeTime);

                }
            if (endFadeTime > 0)
                if (GetPlayingTime() > playingData.lenght - endFadeTime)
                {

                    currentVolume = Mathf.Lerp(0, volume, (playingData.lenght - GetPlayingTime()) / endFadeTime);
                }

            if (GetPlayingTime() > startFadeTime && playingData.lenght < GetPlayingTime() - endFadeTime)
            {
                currentVolume = volume;
            }
            source.volume = Mathf.MoveTowards(source.volume,currentVolume,Time.fixedDeltaTime);
            currentPitch = Mathf.MoveTowards(currentPitch, pitch, Time.fixedDeltaTime / 3);
            source.pitch = currentPitch;
        }
       else
        {
            currentVolume = volume;
            source.volume = currentVolume * pauseVolumeMult;
        }
        if (GetPlayingTime() >= playingData.lenght - 0.1f) PlayRandom();
	}
}
