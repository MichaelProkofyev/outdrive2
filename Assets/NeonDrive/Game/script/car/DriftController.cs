using UnityEngine;
using System.Collections;
using UnityEngine.UI;
namespace UnityStandardAssets.Vehicles.Car
{
    public class DriftController : MonoBehaviour
    {

        public float timeOver = 20f;
        public float timeNorm;
        

        public GameObject carP;
        public Collider trig;

        public GameObject speedLimit;

        public CarController carControllerDrift;

        public float angleSlow;
        public float angleFast;


        public bool swithT;
        private float speedPercentage;

       

        public Text timeGUIOVER;
        public Text speedCarText;
        public Text TimeWay;

        public Text LifeTime;

        private float    TWtime;

        private int speedInt;
        // Use this for initialization
        void Start()
        {
            swithT = false;
        }


        void OnTriggerStay(Collider trig)
        {
            swithT = false;
        }

        // Update is called once per frame
        void Update()
        {
            TWtime += Time.deltaTime; 
            speedInt = Mathf.RoundToInt(carControllerDrift.carSpeed);

            speedCarText.text = speedInt.ToString();
            TimeWay.text = TWtime.ToString();


            if (Input.GetKey(KeyCode.Space))
            {
                carControllerDrift.m_SteerHelper = 0.05f * Time.deltaTime * 8f;
            }
            else {
                carControllerDrift.m_SteerHelper = 0.7f;
            }

            speedPercentage = carControllerDrift.carSpeed/300f;
            carControllerDrift.m_MaximumSteerAngle = Mathf.Lerp(angleSlow, angleFast, speedPercentage);

            if (carControllerDrift.carSpeed < 88f )
            {
                speedLimit.SetActive(true);
                timeOver -= Time.deltaTime;
                timeGUIOVER.text = timeOver.ToString();


            }
            else {
                speedLimit.SetActive(false);
                timeOver = timeNorm;
                
            }




           


           
             

           
            if (timeOver < 1)
            {
                Application.LoadLevel(3);
            }
        }
        


    }

}