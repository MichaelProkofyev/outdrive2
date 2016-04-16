using UnityEngine;
using System.Collections;
using UnityEngine.UI;
public class MusicPlayerHUD : MonoBehaviour {
    public Image timeFillBar;
    public Text authorText;
    public Text nameText;

    public Slider volumeSlider;
    public MusicPlayer player;

    private float showTimer;
    public float alphaSpeed = 1;
    public Image[] images;
    public Text[] texts;
    private float alpha;
    private float targetAlpha;
    private Color[] startColorsImages;
    private Color[] startColorsTexts;
    public float showTime = 5;
	// Use this for initialization
	void Start () {
        SetStartColors();
        volumeSlider.value = MusicPlayer.volume;
	}
	
    public void SetBar(float current,float max)
    {
        Vector3 vec = timeFillBar.rectTransform.localScale;
        vec.x = current / max;
        timeFillBar.rectTransform.localScale = vec;
    }

    public void SetTexts()
    {
        authorText.text = player.playingData.authorName;
        nameText.text = player.playingData.musicName;
    }
    public void Show()
    {
        targetAlpha = 1;
        showTimer = showTime;
    }

    public void SetStartColors()
    {
        startColorsImages = new Color[images.Length];
        startColorsTexts = new Color[texts.Length];
        for (int i = 0; i < images.Length; i++)
        {
            startColorsImages[i] = images[i].color;
        }
        for (int i = 0; i < texts.Length; i++)
        {
            startColorsTexts[i] = texts[i].color;
        }
    }

    public void SetAlpha(float mult)
    {
        for (int i = 0; i < images.Length;i++ )
        {
            Color col = startColorsImages[i];
            col.a = col.a * mult;
            images[i].color = col;
        }
        for (int i = 0; i < texts.Length; i++)
        {
            Color col = startColorsTexts[i];
            col.a = col.a * mult;
            texts[i].color = col;
        }
    }

	// Update is called once per frame
	void Update () {
        SetBar(player.GetPlayingTime(), player.playingData.lenght);
        MusicPlayer.volume = volumeSlider.value;
        alpha = Mathf.MoveTowards(alpha,targetAlpha,Time.fixedDeltaTime * alphaSpeed);
        showTimer -= Time.deltaTime;
        if(showTimer <= 0)
        {
            targetAlpha = 0;
        }
        if(Time.timeScale == 0)
        {
            targetAlpha = 1;
            showTimer = showTime;
        }
        SetAlpha(alpha);
	}
}
