GOOGLE_PROJECT_ID=loveletter-322711 # YOUR GCP PROJECT ID GOES HERE
CLOUD_RUN_SERVICE=rest-api-google-sheets # NAME OF YOUR CLOUD RUN SERVICE

gcloud builds submit --tag gcr.io/$GOOGLE_PROJECT_ID/$CLOUD_RUN_SERVICE \
  --project=$GOOGLE_PROJECT_ID

gcloud run deploy $CLOUD_RUN_SERVICE \
  --image gcr.io/$GOOGLE_PROJECT_ID/$CLOUD_RUN_SERVICE \
  --platform managed \
  --region us-central1 \
  --allow-unauthenticated \
  --project=$GOOGLE_PROJECT_ID
