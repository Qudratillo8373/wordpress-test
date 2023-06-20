resource "aws_route53_record" "writer" {
    zone_id = var.ZONEID
    name    = "writer.${var.DOMAIN}"
    type    = "CNAME"
    ttl     = "300"
    records = [aws_rds_cluster_instance.writer.endpoint]
}

resource "aws_route53_record" "reader1" {
    zone_id = var.ZONEID
    name    = "reader1.${var.DOMAIN}"
    type    = "CNAME"
    ttl     = "300"
    records = [element(aws_rds_cluster_instance.reader.*.endpoint, 0)]
}

resource "aws_route53_record" "reader2" {
    zone_id = var.ZONEID
    name    = "reader2.${var.DOMAIN}"
    type    = "CNAME"
    ttl     = "300"
    records = [element(aws_rds_cluster_instance.reader.*.endpoint, 1)]
}

resource "aws_route53_record" "reader3" {
    zone_id = var.ZONEID
    name    = "reader3.${var.DOMAIN}"
    type    = "CNAME"
    ttl     = "300"
    records = [element(aws_rds_cluster_instance.reader.*.endpoint, 2)]
}
