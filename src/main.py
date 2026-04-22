from openai import OpenAI
import os
from dotenv import load_dotenv

# Load environment variables
load_dotenv()

# Initialize client
client = OpenAI(api_key=os.getenv("OPENAI_API_KEY"))

# Simple AI request
response = client.responses.create(
    model="gpt-4.1-mini",
    input="Write a short motivational quote for developers."
)

print(response.output_text)
