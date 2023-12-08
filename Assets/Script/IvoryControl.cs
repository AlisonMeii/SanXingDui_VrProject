using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.XR;
using UnityEngine.XR.Interaction.Toolkit;
using UnityEngine.SceneManagement;

public class IvoryControl : MonoBehaviour
{      
    private bool isPlayerInRange;
    public Animator anim;
    public XRNode inputSource = XRNode.RightHand;
    // Start is called before the first frame update
    void Start()
    {
        
    }
    private void OnTriggerEnter(Collider other)
    {
        if (other.CompareTag("Player"))
        {
            isPlayerInRange = true;

        }
    }
    // Update is called once per frame
    void Update()
    {
        InputDevice device = InputDevices.GetDeviceAtXRNode(inputSource);
        bool triggerValue;
        
        if (isPlayerInRange && device.TryGetFeatureValue(CommonUsages.triggerButton, out triggerValue) && triggerValue)
        {
            //print("111");
            anim.Play("xiangya");
            StartCoroutine(LoadSceneAfterDelay("文字 2", 3));
        }
    }
    IEnumerator LoadSceneAfterDelay(string sceneName, float delay)
    {
        // 等待一段时间
        yield return new WaitForSeconds(delay);

        // 使用SceneManager加载目标场景
        SceneManager.LoadScene(sceneName);
    }


}
