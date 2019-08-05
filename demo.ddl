{
  "archive": {
    "enable_reconstruct": true,
    "files": {
        "input_0.png"         : "Input image",
        "result.png"          : "Output image",
        "stdout.txt"          : "Output text file"
    },
    "info": {
            "run_time": "run time"
        }
  },
  "build": {
    "build1": {
      "url": "http://ker.iutsd.univ-lorraine.fr/GTVimageVect.tar.gz",
      "construct": "git clone https://github.com/DGtal-team/DGtal.git; cd DGtal; mkdir build; cd build; cmake .. -DBUILD_TESTING=OFF -DBUILD_EXAMPLES=OFF -DCMAKE_BUILD_TYPE:string=\"Release\"; make; cd ../../GTVimageVect; mkdir build; cd build; cmake .. -DCMAKE_BUILD_TYPE:string=\"Release\" -DDGtal_DIR=\"/home/ipol/ipolDevel/ipol_demo/modules/demorunner/binaries/77777000076/src/DGtal/build\"; make ",
      "move": "GTVimageVect/build/tv-triangulation-color"
    }
  },
  "general": {
    "description": "Demonstration of the paper \"Geometric Total Variation for Image Vectorization, Zooming and Pixel Art Depixelizing\" \n source code also available on a github repository: <a href=\"https://github.com/kerautret/GTVimageVect\"> https://github.com/kerautret/GTVimageVect</a> ", 
    "requirements":"DEBIAN_STABLE",
    "demo_title": "Geometric Total Variation for Image Vectorization, Zooming and Pixel Art Depixelizing",
    "input_description": [
      "Click on an image or upload one to use it as the algorithm input."
    ],
    "param_description": [
      "You can choose the zoom parameter and run the algorithm."
    ],
    "xlink_article": "https://www.ipol.im/",
    "timeout": 600
  },
  "inputs": [
    {
            "description": "Input image",
            "required": true,
            "max_pixels": 100000000,
            "dtype": "x",
            "ext": ".png",
            "type": "image",
            "max_weight": "50*1024*1024"
    }
  ],

"params": [
    {
          "id": "zoomfactor",
          "label": "Choose the zoom factor",
          "type": "range",
          "comments": "Set the resulting zoom factor.",
          "values": {
                "default": 16,
                "max": 32,
                "min": 1,
                "step": 1
          }
      }
  ],
  
  "results": [
    {
            "type": "gallery",
            "contents":
            {
                "Input Image" : {
                    "img": "src-bitmap.png"
                },
                "output Zoomed image": {
                    "img": "result.png"
                }
            }
    },
    
    {
            "contents": "stdout.txt", 
            "label": "Output", 
            "type": "text_file"
    }
  ],
  "run":  "${demoextras}/DemoExtras/run.sh  ${demoextras}  input_0.png $zoomfactor result.png   "
}