# IPFS Image Uploader
This code is used to upload an image to IPFS using the Moralis API.

Requirements
Moralis API Key: To get a Moralis API key, sign up on their website.
Python: This code is written in Python.
dotenv: The dotenv library is used to store the API key securely.
evm_api: The evm_api library is used to interact with the Moralis API.
base64: The base64 library is used to encode the image content.
Usage
Clone the repository.
Replace IMAGE_PATH in the code with the path to your image.
Save your Moralis API key as an environment variable named MORALIS_API_KEY.
Run the code with Python.
The result of the IPFS upload will be printed on the console.
Code Explanation
load_dotenv loads the environment variables stored in the .env file.
api_key retrieves the MORALIS_API_KEY environment variable.
The image file is read and its content is encoded as base64.
The evm_api.ipfs.upload_folder function is called with the API key and the encoded image content.
The result of the IPFS upload is printed on the console.
