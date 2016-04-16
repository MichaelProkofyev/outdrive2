using UnityEngine;
using System.Collections;
using System.Collections.Generic;


namespace UnityStandardAssets.Vehicles.Car
{


    public class FindCloseDummy : MonoBehaviour
    {
        public CarAIControl CarC;

        public Collider carColl;
        public string targetTag;
        float speed = 5f;
        int currentWayPoint = 0;
        Vector3 currentPoint;
        Rigidbody body;
        GameObject[] wayPoints;

        void Update()
        {
            wayPoints = GameObject.FindGameObjectsWithTag(targetTag); // нашли все объекты с тегом WayPoint

            // цикл для сортировки, называется метод пузырька
            for (int i = 0; i < wayPoints.Length; i++)
            {
                for (int j = i + 1; j < wayPoints.Length; j++)
                {
                    if (getDistantion(wayPoints[i]) > getDistantion(wayPoints[j]))
                    {
                        // если дистанция до waypoint[i] больше дистанции до waypoint[j] то
                     // меняем местами
                        GameObject tempWayPoint = wayPoints[i];

                        wayPoints[i] = wayPoints[j];
                        wayPoints[j] = tempWayPoint;
                    }
                }
            }

            currentPoint = wayPoints[0].transform.position;

           // body = GetComponent<Rigidbody>();
        }

        float getDistantion(GameObject obj)
        {
            // дистанция от объекта на которм этот скрипт до объекта obj
            return Vector3.Distance(transform.position, obj.transform.position);
        }

        

        void OnTriggerEnter(Collider col)
        {
            // если объект вошел в коллайдер-триггер col и тег этого триггера = WayPoint то меняем вейпоинт на следующий и уничтожаем текущий
            if (col.tag == targetTag)
            {
                currentWayPoint++;

                if (currentWayPoint < wayPoints.Length)
                {
                    currentPoint = wayPoints[currentWayPoint].transform.position;
                    
                }

               // Destroy(col.gameObject);
            }
        }

    }
}