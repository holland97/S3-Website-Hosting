# S3-Website-Hosting
In this project, I implemented static website hosting using a private S3 bucket. I registered a domain with Route 53, secured a TLS/SSL certificate via AWS Certificate Manager (ACM), and established a CloudFront distribution to deliver the website content to users securely and efficiently.

1. Register DNS on Route53
2. Request for certificate on Certificate Manager
3. Create records in Route53
4. Make S3 private bucket and enable static website hosting
5. Setup the Origin Access Control and CloudFront Distribution
6. Create Route53 record for CloudFront alias
7. Generate CICD pipeline that will build infrastructure and upload .html files to bucket onces built
