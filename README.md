# Alma Integrations Config Manager

Web frontend for institutions (and GIL staff) to manage configuration related to Alma 3rd party integrations.

Configuration settings will be made available via API to other integration-related code and scripts.

## API Usage

Set HTTP_AUTHORIZATION header with integration API Key value on all requests. This will indicate to the app the Integration to look up.

### To Get Contacts for An Institution

For an array of contacts (name, email, branch campus, created datetime) from an institution:

    GET '/api/uga/contacts'
    
### To get an Integration Configuration object
 
For an integration/institution combo:

    GET '/api/uga/settings'