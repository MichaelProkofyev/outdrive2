using UnityEngine;
using System.Collections;
using UnityEngine.UI;
public class Speed_HUD : MonoBehaviour {
    public float indicatorValue;
    public Image indicator;
    public Image back;
    public Vector2 redZoneBorders;
    public static Speed_HUD instance;
    public Transform pivot;
    public float moveSpeed = 2;
    public float rotateSpeed = 2;
    public Rigidbody car;
    //public float zonesDamageMult = 1;
    public float zonesDamageUpSpeed = 1;
    private float currentZonesDamage = 0;
    public float zonesDamageStart;

    public float deathT = 0;
    public float deathTimeRight = 15;
    public float deathTimeLeft = 1;

    [System.Serializable]
    public class RedZoneAnimation
    {
        public float rate;
        public Image[] redZoneImages;
        [HideInInspector]
        public Color[] startColors;
        [HideInInspector]
        public float[] alpha = new float[2];
        public float resetSpeed;
        public void SetStartColors()
        {
            startColors = new Color[redZoneImages.Length];
            for (int i = 0; i < redZoneImages.Length;i++ )
            {
                startColors[i] = redZoneImages[i].color;
            }
            alpha = new float[2];
        }
        public void SetAlpha(int i,float a)
        {
            
            
                Color col = startColors[i];
                col.a = a;
                redZoneImages[i].color = col;
                alpha[i] = a;
           
        }

        public void Tick()
        {
            SetAlpha(0,Mathf.Lerp(alpha[0],startColors[0].a,Time.deltaTime * resetSpeed));
            SetAlpha(1, Mathf.Lerp(alpha[1], startColors[1].a, Time.deltaTime * resetSpeed));
        }

    }
    public RedZoneAnimation redZoneAnimation;
    private float redZoneT;
    private bool showTut = true;
    private float tutT = 5;
    void Awake()
    {
        transform.position = pivot.position;
        transform.rotation = pivot.rotation;
        instance = this;
    }
	// Use this for initialization
	void Start () {
        redZoneAnimation.SetStartColors();
        indicatorValue = 0.5f;
	}
	
    public void SetIndicator(float value)
    {
        Vector3[] corners = new Vector3[4];
        back.rectTransform.GetWorldCorners(corners);
        indicator.rectTransform.position = Vector3.Lerp(corners[1],corners[2],value);
    }

    public bool InRedZone()
    {
        if (indicatorValue < redZoneBorders.x || indicatorValue > redZoneBorders.y)
            return true;
        return false;
    }

    public void MoveInterface()
    {
       
        
    }
	// Update is called once per frame
	void Update () {
        SetIndicator(indicatorValue);
        redZoneT -= Time.deltaTime;
        tutT -= Time.deltaTime;
        MusicPlayer.instance.pitch = 1f;
        if(InRedZone())
        { 
        if(redZoneT <= 0)
        {
            if(indicatorValue > redZoneBorders.y)
                redZoneAnimation.SetAlpha(1, 1);
            if (indicatorValue < redZoneBorders.x)
            {
               // MusicPlayer.instance.pitch = 0.8f;
                redZoneAnimation.SetAlpha(0, 1);
            }
            redZoneT = redZoneAnimation.rate;
        }
        if (indicatorValue < redZoneBorders.x)
        {
            MusicPlayer.instance.pitch = MusicPlayer.instance.lowPitch;
            Pulse_Controller.instance.state = Pulse_Controller.State.slow;
            HealthController.TakeDamage(currentZonesDamage*Time.deltaTime);
            currentZonesDamage += zonesDamageUpSpeed * Time.deltaTime;
            if (!showTut)
            {
                showTut = true;
                Tutor_HUD.instance.Show(1);
            }
            
        }
        if(indicatorValue > redZoneBorders.y)
            {
                currentZonesDamage += zonesDamageUpSpeed * Time.deltaTime;
                Pulse_Controller.instance.state = Pulse_Controller.State.fast;
                HealthController.TakeDamage(currentZonesDamage*Time.deltaTime);
                if (!showTut)
                {
                    showTut = true;
                    Tutor_HUD.instance.Show(2);
                }
            }
       
    }
        else
        {
            currentZonesDamage = zonesDamageStart;
            Pulse_Controller.instance.state = Pulse_Controller.State.normal;
            if(tutT <= 0)
            showTut = false;
        }
        redZoneAnimation.Tick();
        if(indicatorValue >= 1 || indicatorValue <= 0)
        {
            deathT += Time.deltaTime;
            if(indicatorValue >= 1 && deathT >= deathTimeRight)
            {
                Death();
            }
            if(indicatorValue <= 0 && deathT >= deathTimeLeft)
            {
                Death();
            }
        }
        else
        {
            deathT = 0;
        }
	}

    public void Death()
    {
        Application.LoadLevel(4);
    }

    public void LateUpdate()
    {
        
        
    }
    public void FixedUpdate()
    {
        Vector3 locVel = car.transform.InverseTransformDirection(car.velocity);
            if(locVel.z > 0)
        transform.position = Vector3.Lerp(transform.position, pivot.position + (car.transform.forward * (locVel.z/400)), Time.smoothDeltaTime * moveSpeed);
        else transform.position = Vector3.Lerp(transform.position, pivot.position + (car.transform.forward * (locVel.z/100)), Time.smoothDeltaTime * moveSpeed);
        transform.rotation = Quaternion.Lerp(transform.rotation, pivot.rotation, Time.smoothDeltaTime * rotateSpeed);
    }

}
