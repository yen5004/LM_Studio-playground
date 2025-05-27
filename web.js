async function chatWithModel(userInput) {
  const res = await fetch("http://localhost:1234/v1/chat/completions", {
    method: "POST",
    headers: { "Content-Type": "application/json" },
    body: JSON.stringify({
      model: "gemma3:1b",
      messages: [{ role: "user", content: userInput }],
      temperature: 0.7
    })
  });

  const data = await res.json();
  console.log(data.choices[0].message.content);
}
