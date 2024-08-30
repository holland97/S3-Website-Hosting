# Creates A record w/ alias that points to my CFD ( so actual name is used and not CFD name )
resource "aws_route53_record" "cloudfront-alias" {
  zone_id = data.aws_route53_zone.my-zone.id
  name    = "rodscloudresume.org"
  type    = "A"

  alias {
    name                   = aws_cloudfront_distribution.s3_distribution.domain_name
    zone_id                = aws_cloudfront_distribution.s3_distribution.hosted_zone_id
    evaluate_target_health = true
  }

}