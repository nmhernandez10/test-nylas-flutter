function showScheduler() {
  // Prompt the Schedule Editor when a user clicks on the button
  nylas.scheduler.show({
    auth: {
      // Account <ACCESS_TOKEN> with active calendar scope
      accessToken: "wRPmk6jVU0js6KvY1lejoUBPOSDmZV",
    },
    style: {
      // Style the Schedule Editor
      tintColor: "#32325d",
      backgroundColor: "white",
    },
    defaults: {
      event: {
        title: "30-min Coffee Meeting",
        duration: 30,
      },
      appearance: {
        thank_you_redirect:
          "https://us-central1-nylas-test-811b6.cloudfunctions.net/api/scheduler-booking-page",
      },
      booking: {
        confirmation_method: "external",
      },
    },
  });
}
