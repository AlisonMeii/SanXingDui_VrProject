using System.Diagnostics;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class coll : MonoBehaviour
{
    // Start is called before the first frame update
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        
    }
     private void OnCollisionEnter(Collision collision)
    {
        if (collision.collider.name == "Cube")
        {
            print("a");
            SceneManager.LoadScene("Display");

        }
    }
}
