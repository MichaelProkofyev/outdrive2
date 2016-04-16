using UnityEngine;
using System.Collections;
using System.Collections.Generic;


public class VehicleControl : MonoBehaviour
{
	
	
	
	
	// Wheels Setting /////////////////////////////////
	
	public CarWheels carWheels;
	
	[System.Serializable]
	public class CarWheels
	{
		
		public ConnectWheel wheels;
		public WheelSetting setting;
	}
	
	
	[System.Serializable]
	public class ConnectWheel
	{
		public bool frontWheelDrive = true;
		public Transform frontRight;
		public Transform frontLeft; 
		
		public bool backWheelDrive = true;
		public Transform backRight; 
		public Transform backLeft; 
		
	}
	
	
	
	
	[System.Serializable]
	public class WheelSetting
	{
		
		public bool AutomaticRadius = true;
		public float Radius = 0.25f;
		public float Weight = 3f; 
		public float Distance = 0.2f;
		
	}
	
	
	
	
	// Lights Setting /////////////////////////////////
	
	public CarLights carLights;
	
	[System.Serializable]
	public class CarLights
	{
		
		public Light[] brakeLights;
		public Light[] reverseLights;
		
	}
	
	
	// Car sounds /////////////////////////////////
	
	public CarSounds carSounds;
	
	[System.Serializable]
	public class CarSounds
	{
		
		public AudioSource nitro;
		public AudioSource switchGear;
		
	}
	
	// Car Particle /////////////////////////////////
	
	public CarParticles carParticles;
	
	[System.Serializable]
	public class CarParticles
	{
		
		public GameObject brakeParticlePerfab;
		public ParticleSystem shiftParticle1, shiftParticle2;
		
		private GameObject[] wheelParticle = new GameObject[4];
		
	}
	
	
	// Car Engine Setting /////////////////////////////////
	
	public CarSetting carSetting;
	
	[System.Serializable]
	public class CarSetting
	{
		
		
		public bool showNormalGizmos = false;
		
		public Transform carSteer;
		
		public HitGround[] hitGround;
		
		public float springs = 1000.0f;
		public float dampers = 2.0f;
		
		public float carPower = 100f;
		public float shiftPower = 150f;
		public float brakePower = 2000f;
		
		public Vector3 shiftCentre = new Vector3(0.0f, -0.25f, 0.0f); 
		
		
		public float maxSteerAngle = 30.0f;
		
		
		public float shiftDownRPM = 1500.0f; 
		public float shiftUpRPM = 2500.0f; 
		public float idleRPM = 500.0f;
		
		public float stiffness = 0.1f; 
		
		
		
		public bool automatic = true; 
		
		public float[] gears = { -10f, 9f, 6f, 4.5f, 3f, 2.5f }; 
		
		
	}
	
	
	[System.Serializable]
	public class HitGround
	{
		public string tag = "street";
		public AudioClip brakeSound;
		public Color brakeColor;
		
	}
	
	
	
	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	
	
	private float steer = 0; 
	private float accel = 0.0f; 
	private bool brake;
	
	
	private bool shifmotor;
	
	[HideInInspector]
	public float curTorque = 100f;
	
	[HideInInspector]
	public float powerShift = 100;
	
	[HideInInspector]
	public bool shift;
	
	
	
	private float torque = 100f;
	
	
	[HideInInspector]
	public float speed = 0.0f;
	
	private float lastSpeed = -10.0f;
	
	
	float[] efficiencyTable = { 0.6f, 0.65f, 0.7f, 0.75f, 0.8f, 0.85f, 0.9f, 1.0f, 1.0f, 0.95f, 0.80f, 0.70f, 0.60f, 0.5f, 0.45f, 0.40f, 0.36f, 0.33f, 0.30f, 0.20f, 0.10f, 0.05f };
	
	
	float efficiencyTableStep = 250.0f;
	
	
	private float shiftDelay = 0.0f;
	
	private AudioSource audioSource;
	
	
	[HideInInspector]
	public int currentGear = 1;
	[HideInInspector]
	public float motorRPM = 0.0f;
	
	
	
	private float wantedRPM = 0.0f;
	private float w_rotate;
	private float slip, slip2 = 0.0f;
	
	
	private GameObject[] Particle = new GameObject[4];
	
	
	
	///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	
	
	private WheelComponent[] wheels;
	
	
	
	private class WheelComponent
	{
		
		public Transform wheel;
		public WheelCollider collider;
		public Vector3 startPos;
		public float rotation = 0.0f;
		public float maxSteer;
		public bool drive;
		public float pos_y = 0.0f;
	}
	
	
	
	private WheelComponent SetWheelComponent(Transform wheel, float maxSteer, bool drive, float pos_y)
	{
		
		WheelComponent result = new WheelComponent();
		GameObject wheelCol = new GameObject(wheel.name + "WheelCollider");
		
		
		
		wheelCol.transform.parent = transform;
		wheelCol.transform.position = wheel.position;
		wheelCol.transform.eulerAngles = transform.eulerAngles;
		pos_y = wheelCol.transform.localPosition.y;
		
		
		wheel.gameObject.AddComponent<WheelCollider>();
		WheelCollider col = (WheelCollider)wheelCol.AddComponent(typeof(WheelCollider));
		col.transform.localScale = wheel.localScale;
		col.radius = wheel.GetComponent<WheelCollider>().radius;
		Destroy(wheel.transform.GetComponent<WheelCollider>());
		
		
		
		result.wheel = wheel;
		result.collider = wheelCol.GetComponent<WheelCollider>();
		result.drive = drive;
		result.pos_y = pos_y;
		result.maxSteer = maxSteer;
		result.startPos = wheelCol.transform.localPosition;
		
		return result;
		
	}
	
	
	
	
	
	
	
	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	
	void Start()
	{
		
		
		wheels = new WheelComponent[4];
		
		wheels[0] = SetWheelComponent(carWheels.wheels.frontRight, carSetting.maxSteerAngle, carWheels.wheels.frontWheelDrive, carWheels.wheels.frontRight.position.y);
		wheels[1] = SetWheelComponent(carWheels.wheels.frontLeft, carSetting.maxSteerAngle, carWheels.wheels.frontWheelDrive, carWheels.wheels.frontLeft.position.y);
		
		wheels[2] = SetWheelComponent(carWheels.wheels.backRight, 0, carWheels.wheels.backWheelDrive, carWheels.wheels.backRight.position.y);
		wheels[3] = SetWheelComponent(carWheels.wheels.backLeft, 0, carWheels.wheels.backWheelDrive, carWheels.wheels.backLeft.position.y);
		
		
		
		foreach (WheelComponent w in wheels)
		{
			
			
			WheelCollider col = w.collider;
			col.suspensionDistance = carWheels.setting.Distance;
			JointSpring js = col.suspensionSpring;
			
			js.spring = carSetting.springs;
			js.damper = carSetting.dampers;
			col.suspensionSpring = js;
			
			
			
			if (!carWheels.setting.AutomaticRadius)
				col.radius = carWheels.setting.Radius;
			
			col.mass = carWheels.setting.Weight;
			
			
			WheelFrictionCurve fc = col.forwardFriction;
			
			fc.asymptoteValue = 5000.0f;
			fc.extremumSlip = 2.0f;
			fc.asymptoteSlip = 20.0f;
			fc.stiffness = carSetting.stiffness;
			col.forwardFriction = fc;
			fc = col.sidewaysFriction;
			fc.asymptoteValue = 7500.0f;
			fc.asymptoteSlip = 2.0f;
			fc.stiffness = carSetting.stiffness;
			col.sidewaysFriction = fc;
			
			
		}
		
		
		audioSource = (AudioSource)GetComponent(typeof(AudioSource));
		//        if (audioSource == null)
		//        {
		//            Debug.Log("No audio please add one");
		//        }
	}
	
	
	
	
	
	
	
	
	public void ShiftUp()
	{
		float now = Time.timeSinceLevelLoad;
		
		if (now < shiftDelay) return;
		
		if (currentGear < carSetting.gears.Length - 1)
		{
			
			if (!carSounds.switchGear.isPlaying)
				carSounds.switchGear.GetComponent<AudioSource>().Play();
			
			
			currentGear++;
			
			shiftDelay = now + 1.0f;
		}
	}
	
	
	public void ShiftDown()
	{
		float now = Time.timeSinceLevelLoad;
		
		if (now < shiftDelay) return;
		
		if (currentGear > 0)
		{
			
			if (!carSounds.switchGear.isPlaying)
				carSounds.switchGear.GetComponent<AudioSource>().Play();
			
			
			currentGear--;
			
			shiftDelay = now + 0.1f;
		}
	}
	
	
	
	
	
	void OnCollisionEnter(Collision collision)
	{
		
		if (collision.transform.root.CompareTag("car"))
		{
			
			collision.transform.root.GetComponent<VehicleControl>().slip2 = 10;
			
			GetComponent<Rigidbody>().angularVelocity = new Vector3(-GetComponent<Rigidbody>().angularVelocity.x * 1.0f, GetComponent<Rigidbody>().angularVelocity.y*0.5f, -GetComponent<Rigidbody>().angularVelocity.z * 1.0f);
			GetComponent<Rigidbody>().velocity = new Vector3(GetComponent<Rigidbody>().velocity.x, GetComponent<Rigidbody>().velocity.y*0.8f, GetComponent<Rigidbody>().velocity.z);
		}
		
	}
	
	
	
	void OnCollisionStay(Collision collision)
	{
		
		if (collision.transform.root.CompareTag("car"))
		{
			
			collision.transform.root.GetComponent<VehicleControl>().slip2 = 10;
			
			
		}
		
	}
	
	
	
	
	
	
	
	void Update()
	{
		
		
		
		
		speed = GetComponent<Rigidbody>().velocity.magnitude * 3.6f;
		
		
		
		if (speed < lastSpeed - 10 && slip < 10)
		{
			slip = lastSpeed / 15;
		}
		
		
		
		if (slip2!=0.0f)
			slip2 = Mathf.MoveTowards(slip2, 0.0f, Time.deltaTime*5.0f);
		
		
		
		
		
		
		lastSpeed = speed;
		
		
		
		
		GetComponent<Rigidbody>().centerOfMass = carSetting.shiftCentre;
		
		
		
		brake = false;
		shift = false; 
		
		
		
		if (carWheels.wheels.frontWheelDrive || carWheels.wheels.backWheelDrive)
			steer = Mathf.MoveTowards(steer, Input.GetAxis("Horizontal"), Time.deltaTime * 2.5f);
		
		accel = Input.GetAxis("Vertical");
		brake = Input.GetButton("Jump");
		shift = Input.GetKey(KeyCode.LeftShift) | Input.GetKey(KeyCode.RightShift);
		
		
		
		
		if (!carSetting.automatic)
		{
			if (Input.GetKeyDown("page up"))
			{
				ShiftUp();
			}
			if (Input.GetKeyDown("page down"))
			{
				ShiftDown();
			}
		}
		
		
		
		if (!carWheels.wheels.frontWheelDrive && !carWheels.wheels.backWheelDrive)
			accel = 0.0f;
		
		
		
		if (carSetting.carSteer)
			carSetting.carSteer.localEulerAngles = new Vector3(12.87916f, 0, steer * -90.0f);
		
		
		
		
		
		
		if (carSetting.automatic && (currentGear == 1) && (accel < 0.0f))
		{
			if (speed < 5.0f)
				ShiftDown(); 
			
			
		}
		else if (carSetting.automatic && (currentGear == 0) && (accel > 0.0f))
		{
			if (speed < 5.0f)
				ShiftUp();
			
		}
		else if (carSetting.automatic && (motorRPM > carSetting.shiftUpRPM) && (accel > 0.0f) && !brake)
		{
			
			ShiftUp(); 
			
		}
		else if (carSetting.automatic && (motorRPM < carSetting.shiftDownRPM) && (currentGear > 1))
		{
			ShiftDown(); 
		}
		
		
		
		
		
		
		
		
		if ((currentGear == 0))
		{
			carSetting.shiftCentre.z = -accel / 3;
			if (speed < carSetting.gears[0] * -10)
				accel = -accel; 
		}
		else
		{
			
			carSetting.shiftCentre.z = -(accel / currentGear) / 2;
		}
		
		
		carSetting.shiftCentre.x = -Mathf.Clamp(steer * (speed / 100), -0.1f, 0.1f);
		
		
		
		
		
		
		foreach (Light brakeLight in carLights.brakeLights)
		{
			if (brake || accel < 0 || speed < 1.0f)
			{
				brakeLight.intensity = Mathf.MoveTowards(brakeLight.intensity, 8, Time.deltaTime * 20.0f);
			}
			else
			{
				brakeLight.intensity = Mathf.MoveTowards(brakeLight.intensity, 0, Time.deltaTime * 20.0f);
				
			}
			
			brakeLight.enabled = brakeLight.intensity == 0 ? false : true;
		}
		
		
		
		
		foreach (Light WLight in carLights.reverseLights)
		{
			if (speed > 2.0f && currentGear == 0)
			{
				WLight.intensity = Mathf.MoveTowards(WLight.intensity, 8, Time.deltaTime * 20.0f);
			}
			else
			{
				WLight.intensity = Mathf.MoveTowards(WLight.intensity, 0, Time.deltaTime * 20.0f);
			}
			WLight.enabled = WLight.intensity == 0 ? false : true;
		}
		
		
		
		
		
		
		
		
		wantedRPM = (5500.0f * accel) * 0.1f + wantedRPM * 0.9f;
		
		float rpm = 0.0f;
		int motorizedWheels = 0;
		bool floorContact = false;
		int currentWheel = 0;
		
		
		
		
		
		foreach (WheelComponent w in wheels)
		{
			WheelHit hit;
			WheelCollider col = w.collider;
			
			if (w.drive)
			{
				if (brake && currentGear < 2)
				{
					rpm += accel * carSetting.idleRPM;
					if (rpm > 1)
					{
						carSetting.shiftCentre.z = Mathf.PingPong(Time.time * (accel * 10), 0.5f) - 0.25f;
					}
					else
					{
						carSetting.shiftCentre.z = 0.0f;
					}
				}
				else
				{
					rpm += col.rpm;
				}
				
				
				motorizedWheels++;
			}
			
			
			
			
			if (brake || accel < 0.0f)
			{
				if ((accel < 0.0f) || (brake && (w == wheels[2] || w == wheels[3])))
				{
					
					if (brake && (accel > 0.0f))
					{
						
						slip = Mathf.Lerp(slip, 10, accel * Time.deltaTime);
						
					}
					else if (speed > 1.0f)
					{
						slip = Mathf.Lerp(slip, 5, 0.1f * Time.deltaTime);
					}
					else
					{
						slip = Mathf.Lerp(slip, 0.0f, Time.deltaTime);
					}
					
					
					
					wantedRPM = 0.0f;
					col.brakeTorque = carSetting.brakePower;
					w.rotation = w_rotate;
					
				}
			}
			else
			{
				
				
				col.brakeTorque = accel == 0 | speed < 10 ? col.brakeTorque = 200 : col.brakeTorque = 1;
				
				
				
				slip = speed > 0.0f ?
					
					(speed > 20 ? slip = Mathf.Lerp(slip, 1.0f + (Mathf.Abs(steer)), Time.deltaTime / 5.0f) : slip = Mathf.Lerp(slip, 1.5f, Time.deltaTime))
						
						: slip = Mathf.Lerp(slip, 0.0f, Time.deltaTime);
				
				
				
				w_rotate = w.rotation;
				
			}
			
			
			
			
			
			WheelFrictionCurve fc = col.forwardFriction;
			
			
			fc.asymptoteValue = 5000.0f;
			fc.extremumSlip = 2.0f;
			fc.asymptoteSlip = 20.0f;
			fc.stiffness = (carSetting.stiffness / (slip + slip2));
			col.forwardFriction = fc;
			fc = col.sidewaysFriction;
			fc.stiffness = carSetting.stiffness / (slip + slip2);
			col.sidewaysFriction = fc;
			
			
			
			
			
			
			if (shift && (currentGear > 1 && speed > 50.0f) && shifmotor && Mathf.Abs(steer) < 0.2f)
			{
				
				if (powerShift == 0) { shifmotor = false; }
				
				powerShift = Mathf.MoveTowards(powerShift, 0.0f, Time.deltaTime * 10.0f);
				
				carSounds.nitro.volume = Mathf.Lerp(carSounds.nitro.volume, 1.0f, Time.deltaTime * 10.0f);
				
				if (!carSounds.nitro.isPlaying)
				{
					carSounds.nitro.GetComponent<AudioSource>().Play();
					
				}
				
				
				curTorque = powerShift > 0 ? carSetting.shiftPower : carSetting.carPower;
				carParticles.shiftParticle1.emissionRate = Mathf.Lerp(carParticles.shiftParticle1.emissionRate, powerShift > 0 ? 50 : 0, Time.deltaTime * 10.0f);
				carParticles.shiftParticle2.emissionRate = Mathf.Lerp(carParticles.shiftParticle2.emissionRate, powerShift > 0 ? 50 : 0, Time.deltaTime * 10.0f);
			}
			else
			{
				
				if (powerShift > 20)
				{
					shifmotor = true;
				}
				
				carSounds.nitro.volume = Mathf.MoveTowards(carSounds.nitro.volume, 0.0f, Time.deltaTime * 2.0f);
				
				if (carSounds.nitro.volume == 0)
					carSounds.nitro.Stop();
				
				powerShift = Mathf.MoveTowards(powerShift, 100.0f, Time.deltaTime * 5.0f);
				curTorque = carSetting.carPower;
				carParticles.shiftParticle1.emissionRate = Mathf.Lerp(carParticles.shiftParticle1.emissionRate, 0, Time.deltaTime * 10.0f);
				carParticles.shiftParticle2.emissionRate = Mathf.Lerp(carParticles.shiftParticle2.emissionRate, 0, Time.deltaTime * 10.0f);
			}
			
			
			
			
			
			
			w.rotation = Mathf.Repeat(w.rotation + Time.deltaTime * col.rpm * 360.0f / 60.0f, 360.0f);
			w.wheel.localRotation = Quaternion.Euler(w.rotation, col.steerAngle, 0.0f);
			
			
			
			Vector3 lp = w.wheel.localPosition;
			
			
			
			if (col.GetGroundHit(out hit))
			{
				
				
				
				if (carParticles.brakeParticlePerfab)
				{
					if (Particle[currentWheel] == null)
					{
						
						Particle[currentWheel] = Instantiate(carParticles.brakeParticlePerfab, w.wheel.position, Quaternion.identity) as GameObject;
						Particle[currentWheel].name = "WheelParticle";
						Particle[currentWheel].transform.parent = transform;
						Particle[currentWheel].AddComponent<AudioSource>();
						
					}
					
					var pc = Particle[currentWheel].GetComponent<ParticleSystem>();
					
					
					for (int i = 0; i < carSetting.hitGround.Length; i++)
					{
						
						if (hit.collider.CompareTag(carSetting.hitGround[i].tag))
						{
							
							Particle[currentWheel].GetComponent<AudioSource>().clip = carSetting.hitGround[i].brakeSound;
							Particle[currentWheel].GetComponent<ParticleSystem>().startColor = carSetting.hitGround[i].brakeColor;
							
						}
						
						
					}
					
					
					
					
					
					
					
					
					if ((brake || slip > 3.0f) && speed > 10)
					{
						if ((accel < 0.0f) || ((brake || slip > 3.0f) && (w == wheels[2] || w == wheels[3])))
						{
							
							if (!Particle[currentWheel].GetComponent<AudioSource>().isPlaying)
								Particle[currentWheel].GetComponent<AudioSource>().Play();
							pc.enableEmission = true;
							Particle[currentWheel].GetComponent<AudioSource>().volume = Mathf.Clamp((speed / 25), 0, 1.0f);
							
						}
					}
					else
					{
						
						pc.enableEmission = false;
						Particle[currentWheel].GetComponent<AudioSource>().volume = Mathf.Lerp(Particle[currentWheel].GetComponent<AudioSource>().volume, 0, Time.deltaTime * 10.0f);
					}
					
				}
				
				
				lp.y -= Vector3.Dot(w.wheel.position - hit.point, Vector3.up / transform.lossyScale.x) - (col.radius);
				lp.y = Mathf.Clamp(lp.y, -10.0f, w.pos_y);
				floorContact = floorContact || (w.drive);
				
			}
			else
			{
				
				if (Particle[3] != null)
				{
					var pc = Particle[currentWheel].GetComponent<ParticleSystem>();
					pc.enableEmission = false;
				}
				
				
				
				lp.y = w.startPos.y - carWheels.setting.Distance;
				
			}
			
			currentWheel++;
			w.wheel.localPosition = lp;
			
			
		}
		
		if (motorizedWheels > 1)
		{
			rpm = rpm / motorizedWheels;
		}
		
		
		motorRPM = 0.95f * motorRPM + 0.05f * Mathf.Abs(rpm * carSetting.gears[currentGear]);
		if (motorRPM > 5500.0f) motorRPM = 5200.0f;
		
		
		int index = (int)(motorRPM / efficiencyTableStep);
		if (index >= efficiencyTable.Length) index = efficiencyTable.Length - 1;
		if (index < 0) index = 0;
		
		
		float newTorque = curTorque * carSetting.gears[currentGear] * efficiencyTable[index];
		
		
		foreach (WheelComponent w in wheels)
		{
			WheelCollider col = w.collider;
			
			if (w.drive)
			{
				
				if (Mathf.Abs(col.rpm) > Mathf.Abs(wantedRPM))
				{
					
					col.motorTorque = 0;
				}
				else
				{
					// 
					float curTorqueCol = col.motorTorque;
					
					if (!brake && accel != 0)
						col.motorTorque = curTorqueCol * 0.9f + newTorque * 0.1f;
					
					
				}
			}
			
			
			
			
			if (brake)
			{
				col.steerAngle = Mathf.Lerp(col.steerAngle, steer * w.maxSteer, 0.02f);
			}
			else
			{
				
				float SteerAngle = Mathf.Clamp(speed / carSetting.maxSteerAngle, 1.0f, carSetting.maxSteerAngle);
				col.steerAngle = steer * (w.maxSteer / SteerAngle);
			}
			
			
			
		}
		
		
		
		
		if (audioSource != null)
		{
			float pitch = Mathf.Clamp(1.0f + ((motorRPM - carSetting.idleRPM) / (carSetting.shiftUpRPM - carSetting.idleRPM) * 0.5f), 1.0f, 10.0f);
			audioSource.pitch = pitch;
			audioSource.volume = Mathf.MoveTowards(audioSource.volume, 1.0f, Time.deltaTime * 10.0f);
		}
		
	}
	
	
	
	/////////////// Show Normal Gizmos ////////////////////////////
	
	
	void OnDrawGizmos()
	{
		
		if (!carSetting.showNormalGizmos || Application.isPlaying) return;
		
		Matrix4x4 rotationMatrix = Matrix4x4.TRS(transform.position, transform.rotation, transform.lossyScale);
		
		Gizmos.matrix = rotationMatrix;
		Gizmos.color = new Color(1, 0, 0, 0.5f);
		
		Gizmos.DrawCube(Vector3.zero, new Vector3(2, 1.5f, 5));
		Gizmos.DrawSphere(carSetting.shiftCentre / transform.lossyScale.x, 0.2f);
		
	}
	
	
	
	
}