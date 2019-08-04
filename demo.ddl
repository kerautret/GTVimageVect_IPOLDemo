{
  "archive": {
    "enable_reconstruct": true,
    "files": {
        "input_0.png"         : "Input image",
        "output.png"          : "Output image",
        "stdout.txt"          : "Output text file"
    },
    "info": {
            "run_time": "run time"
        }
  },
  "build": {
    "build1": {
      "url": "http://ker.iutsd.univ-lorraine.fr/GTVimageVect.tar.gz",
      "construct": "git clone https://github.com/DGtal-team/DGtal.git; cd DGtal; mkdir build; cd build; cmake .. -DBUILD_TESTING=OFF -DBUILD_EXAMPLES=OFF; make; cd ../../GTVimageVect; mkdir build; cd build; cmake .. -DDGtal_DIR=\"../../DGtal/build\" cd GTVimageVect && ls",
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
      "Set the type of operation, the parameters and run the algorithm."
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
          "visible": "params.type==1",
          "id": "a param",
          "label": "param",
          "type": "range",
          "values": {
                "default": 0.5,
                "max": 100,
                "min": -100,
                "step": 0.01
          }
      }
  ],
  "results": [
    {
            "contents": "'Warning: In order to be displayed, the interpolated images are saved as PNG files instead of TIFF files. It entails a loss of information. In addition, displayed images may be interpolated by the browser and may differ from the computed PNG files.'",
            "type": "message"
    },
    {
        "contents": {
            "Output texture": {
                "img": "result.png"
            },
            "Input texture": {
                "img": "input_0.png"
            }
        },
        "type": "gallery"
    },
    {
            "contents": "stdout.txt", 
            "label": "Output", 
            "type": "text_file"
    }
  ],
  "run":  "${demoextras}/run.sh input_0.png result.png $type $interp \"$transform\" $dx $dy $factor"
}