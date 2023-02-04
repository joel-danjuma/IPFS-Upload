from moralis import evm_api
from dotenv import load_dotenv
import base64
import os

load_dotenv()

api_key = os.getenv('MORALIS_API_KEY')

with open('IMAGE_PATH', 'rb') as img_file:
    content = base64.b64encode(img_file.read()).decode('utf-8')

body = [{
    "path": "IMAGE_PATH", 
    "content": content, 
}]

result = evm_api.ipfs.upload_folder(
    api_key=api_key,
    body=body,
)

print(result)
