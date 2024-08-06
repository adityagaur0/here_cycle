function addWatsonScript() {
  window.watsonAssistantChatOptions = {
    integrationID: "8582a640-01eb-4fc3-aa2a-d4d63a60cea1",
    region: "us-south",
    serviceInstanceID: "cbad6fa3-1f19-4516-9c2c-82c60a6beff4",
    onLoad: async (instance) => {
      await instance.render();
    },
  };
  setTimeout(function () {
    const t = document.createElement("script");
    t.src =
      "https://web-chat.global.assistant.watson.appdomain.cloud/versions/" +
      (window.watsonAssistantChatOptions.clientVersion || "latest") +
      "/WatsonAssistantChatEntry.js";
    document.head.appendChild(t);
  });
}

window.addWatsonScript = addWatsonScript;
