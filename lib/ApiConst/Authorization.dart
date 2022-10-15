class Authorization {
  final String authorizationType = 'Bearer';
  final String authorizationToken = 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJrZXkiOiJkMzUyN2UxNy00ODk1LTQ4ZGQtODUzMy00ZDM1NTQxZmMzZTMiLCJleHBpcmVzSW4iOjYwNDgwMCwidXNlcklkIjoiNjA1MWViYWQ3ODkzOTcwMDA3ZTNhMDc5IiwicGhvbmUiOiIwOTM3MTc1Mzc3IiwidHlwZSI6Im93bmVyIiwic2hvcElkIjoiNjA1MWViYWQ3ODkzOTcwMDA3ZTNhMDc5IiwiaWF0IjoxNjYxNDIwMTI0fQ.1JqMrzO2NGpGHxCXwQ2h5fUQq09p33BYupZTShKMNsE';

  String getAuthType() {
    return authorizationType;
  }

  String getAuthToken() {
    return authorizationToken;
  }
}