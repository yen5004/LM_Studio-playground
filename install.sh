#! /bin/bash

curl -fsSL https://ollama.com/install.sh  sh
ollama --version
ollama run gemma3:1b

#install and run LM Studio and enable webservices

curl http://localhost:1234/v1/chat/completions \
  -H "Content-Type: application/json" \
  -d '{
    "model": "gemma3:1b",
    "messages": [{"role": "user", "content": "Hello, who are you?"}],
    "temperature": 0.7
  }'
