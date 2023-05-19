set -e
IFS='|'

AWSCLOUDFORMATIONCONFIG="{\
\"configLevel\":\"project\",\
\"useProfile\":true,\
\"profileName\":\"bthato\",\
\"region\":\"us-east-1\"\
}"

AMPLIFY="{\
\"projectName\":\"Project X\",\
\"envName\":\"prodw\",\
\"defaultEditor\":\"Visual Studio Code\"\
}"

AUTHCONFIG="{\
\"userPoolId\": \"us-east-1_GHJfspN4U\",\
\"webClientId\": \"2m4ktu3i5gqseuluc6ftgg0otm\",\
\"identityPoolId\": \"us-east-1:c104f09f-9898-4867-bf8d-eaae972f3cf0\"
}"

STORAGECONFIG="{\
  \"region\": \"us-east-1\",\
  \"bucketName\": \"voicetime\"\
}"

CATEGORIES="{\
  \"auth\":$AUTHCONFIG\
}"

CODEGEN="{\
\"generateCode\":true,\
\"codeLanguage\":\"javascript\",\
\"fileNamePattern\":\"src/graphql/**/*.js\",\
\"generatedFileName\":\"API\",\
\"generateDocs\":true,\
\"maxDepth\":2\
}"

PROVIDERS="{\
\"awscloudformation\":$AWSCLOUDFORMATIONCONFIG\
}"


amplify init --amplify $AMPLIFY --providers $PROVIDERS --categories $CATEGORIES --codegen $CODEGEN --yes