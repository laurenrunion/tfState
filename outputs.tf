output "vpc_azs" {
  description = "Availability zones used by the VPC."
  value       = module.vpc.azs
}
