## Mocked Facebook API

![Mocked Facebook API header](https://i.imgur.com/KJjg5EW.png)

A **Mockoon** setup for the Facebook API, allowing us to run system tests in staging environments while isolating ourselves from the actual Facebook API.

---

## How to Run:

1. **Install Mockoon**:
    - If you haven’t installed Mockoon yet, download it from [Mockoon's website](https://mockoon.com/) and follow the setup instructions.

2. **Load the Mock API**:
    - Open Mockoon and select **File > Import Environment**.
    - Import the provided `facebook-mock-api.json` file. This file contains all the necessary configurations for the mock API to emulate Facebook's behavior.

3. **Start the Mock Server**:
    - Select the Facebook API environment in Mockoon.
    - Click the **Start Server** button or press `Ctrl+R` to run the mock API.
    - Note the port number displayed, as you’ll use it to configure your staging environment.

4. **Verify the Mock API is Running**:
    - Open a browser or use `curl` to verify the mock endpoints are accessible. For example:
      ```bash
      curl http://localhost:PORT/v1/me
      ```
    - You should receive a sample JSON response that matches the expected Facebook API response structure.

---

## Endpoints

The mock API includes common Facebook API endpoints, such as:

- **`GET /v1/me`**: Fetches mocked user profile information.
- **`POST /v1/publish`**: Mocks a post creation on the user’s timeline.
- **`GET /v1/friends`**: Returns a list of mocked friends data.

Refer to the `facebook-mock-api.json` for the full list of supported endpoints and responses.

---

## Testing Scenarios

This mocked API can support a range of testing scenarios:
- **User Profile Retrieval**: Test cases for fetching a user’s profile data.
- **Posting Content**: Simulate post creation and validate handling.
- **Friends List**: Retrieve a friend list to simulate social interactions.

---

## Notes

- **Authentication**: This mock setup assumes no actual authentication checks. It returns static data to simplify system testing.
- **Customization**: You can customize the JSON responses in the Mockoon environment to simulate different user scenarios and test cases.
- **Rate Limiting**: No rate limiting is applied. Requests to this mocked API are unrestricted.

---

## Deploy

Mockoon allows us to run this on CLI based environments easily: https://mockoon.com/cli/. We use this, with a NodeJS dockerfile to run this on our staging environment.

See Dockerfile for an out of the box deployment method.

---

## Troubleshooting

- **Mock Server Fails to Start**:
    - Ensure that no other applications are using the selected port.
    - Restart Mockoon if needed and verify the setup.

- **Unexpected Responses**:
    - Check that your staging environment URL points to the Mockoon server correctly.
    - Verify any modifications made to the `facebook-mock-api.json` file for accuracy.

---

With this setup, you should be able to simulate interactions with the Facebook API effectively, allowing you to run robust tests without direct dependencies on Facebook’s production API.
