using UnityEngine;
using UnityEngine.UI;
using UnityEngine.XR;
using TMPro;

public class Listening : MonoBehaviour
{
    public GameObject hintPanel;
    public GameObject ListeningPanel;
    public XRNode inputSource = XRNode.RightHand;
    public bool hideHintOnStart = true;
    private bool isPaused = false;
    private AudioSource audioSource;
    public AudioClip audioClip;
    private bool isPlayerInRange;
    private bool isInteracting;
    private bool isPanelActive = false;
    public Animator anim;

    private void Start()
    {   
        audioSource = GetComponent<AudioSource>();
        audioSource.clip = audioClip;
        if (hideHintOnStart)
            hintPanel.gameObject.SetActive(false);
    }

    private void OnTriggerEnter(Collider other)
    {
        if (other.CompareTag("Player"))
        {
            isPlayerInRange = true;
            hintPanel.gameObject.SetActive(true);
        }
    }

    private void OnTriggerExit(Collider other)
    {
        if (other.CompareTag("Player"))
        {
            isPlayerInRange = false;
            hintPanel.gameObject.SetActive(false);
            ListeningPanel.gameObject.SetActive(false);
            audioSource.Stop();
            isPanelActive = false;
        }
    }

    private void Update()
    {
        InputDevice device = InputDevices.GetDeviceAtXRNode(inputSource);
        bool triggerValue;
        
        if (isPlayerInRange && !isInteracting && device.TryGetFeatureValue(CommonUsages.triggerButton, out triggerValue) && triggerValue)
        {
            isInteracting = true;
            
            if (!isPanelActive)
            {   
                audioSource.Play();
                ListeningPanel.gameObject.SetActive(true);
                isPanelActive = true;
                anim.Play("role1");
            }
        }

        if (isInteracting && (!device.TryGetFeatureValue(CommonUsages.triggerButton, out triggerValue) || !triggerValue))
        {
            isInteracting = false;
        }
    }
}
