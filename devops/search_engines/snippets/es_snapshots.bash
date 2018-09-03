# Set a new snapshot target
PUT _snapshot/s3_repo?verify=true
{
  "type": "s3",
  "settings": {
    "bucket": "my-bucket-for-snapshots",
    "region": "us-east-1"
  }
}

# Do a snapshot
PUT /_snapshot/s3_repository/snapshot_6?wait_for_completion=false

# See what's inside
GET _snapshot/s3_repo
GET _snapshot/s3_repo/_all

# Restore from a snapshot
POST /_snapshot/s3_repo/snapshot_6/_restore
{
    "indices": "my_indice",
}
