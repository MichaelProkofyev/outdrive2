using UnityEngine;
using System.Collections;
using UnityEngine.UI;
public class Tutor_HUD : MonoBehaviour
{

    [System.Serializable]
    public class Tutor
    {

        public Image[] images;
        public Text[] texts;
        public Color[] startColorsImages;
        public Color[] startColorsTexts;
        public float showTime = 5;

        public float showTimer = 5;
        private float targetAlpha;
        public float alphaSpeed = 1;
        public int showedTimes;
        private float alpha;
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
            for (int i = 0; i < images.Length; i++)
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
        public void Show()
        {
            if (showTimer > 0 || showedTimes >= 2) return;
            Debug.Log("Show Tutor");
            showTimer = showTime;
            targetAlpha = 1;
            showedTimes++;
        }

        public void Hide()
        {
            targetAlpha = 0;
        }

        public void Tick()
        {
            showTimer -= Time.fixedDeltaTime;
            if (showTimer <= 0)
            {
                Hide();
            }
            alpha = Mathf.Lerp(alpha,targetAlpha,Time.deltaTime * alphaSpeed);
            SetAlpha(alpha);
        }


    }
    public Tutor[] tutors;
    public static Tutor_HUD instance;
    // Use this for initialization 
    void Start()
    {
        instance = this;
        SetStartColors();
        SetAlpha(0, 0);
        SetAlpha(1, 0);
        SetAlpha(2, 0);
    }
    void SetStartColors()
    {
        for (int i = 0; i < tutors.Length; i++)
        {
            tutors[i].SetStartColors();
        }
    }

    void SetAlpha(int id, float alpha)
    {
        tutors[id].SetAlpha(alpha);
    }
    public void Show(int id)
    {
//        Debug.Log("Call");
        instance.tutors[id].Show();
    }
    // Update is called once per frame
    void Update()
    {
        for (int i = 0; i < tutors.Length; i++)
        {
            tutors[i].Tick();
        }
    }
}
