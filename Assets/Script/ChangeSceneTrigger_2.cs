using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class ChangeSceneTrigger_2 : MonoBehaviour
{

    public float fadeDuration = 2f; // 渐变持续时间

    private bool triggered = false;

    private void OnTriggerEnter(Collider other)
    {
        if (other.CompareTag("Player") && !triggered)
        {
            triggered = true;
            StartCoroutine(TriggerSequence());
        }
    }

    private IEnumerator TriggerSequence()
    {

        // 逐渐变黑屏
        Camera mainCamera = Camera.main;
        float initialIntensity = mainCamera.backgroundColor.grayscale;
        float targetIntensity = 0f;

        float elapsedTime = 0f;
        while (elapsedTime < fadeDuration)
        {
            float t = elapsedTime / fadeDuration;
            float intensity = Mathf.Lerp(initialIntensity, targetIntensity, t);
            mainCamera.backgroundColor = new Color(intensity, intensity, intensity);
            elapsedTime += Time.deltaTime;
            yield return null;
        }

        // 切换场景
        SceneManager.LoadScene("文字 1");
    }
}
