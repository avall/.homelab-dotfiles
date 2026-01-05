select name, account_id, sp_connection_name from aws_s3_bucket
select count(*) as accounts from all_aws.aws_account
select count(*) as buckets from all_aws.aws_s3_bucket
select count(*) as serverless_rds from all_aws.aws_rds_db_cluster
select count(*) as rds  from all_aws.aws_rds_db_instance
select * from all_aws.aws_docdb_cluster
select * from all_aws.aws_api_gatewayv2_api
select * from all_aws.aws_api_gateway_rest_api
select * from all_aws.aws_dms_endpoint
select * from all_aws.aws_dynamodb_table
select * from all_aws.aws_ec2_application_load_balancer
select * from all_aws.aws_opensearch_domain
select * from all_aws.aws_route53_domain

select scheme, count(*)  from all_aws.aws_ec2_application_load_balancer group by scheme
select * from all_aws.aws_ec2_application_load_balancer_metric_request_count_daily where timestamp > current_date - interval '1 day' order by average desc;
select * from all_aws.aws_lambda_function_metric_invocations_daily where timestamp > current_date - interval '1 day' order by sum desc,name asc;
select name,sum(sum) from all_aws.aws_lambda_function_metric_invocations_daily where timestamp > current_date - interval '120 day' group by name order by sum desc
select * from all_aws.aws_sfn_state_machine
select * from all_aws.aws_msk_cluster
select * from all_aws.aws_neptune_cluster
select * from all_aws.aws_sns_topic
select * from all_aws.aws_sqs_queue
select * from all_aws.aws_ssm_parameter

select * from all_aws.aws_ecs_cluster
select * from all_aws.aws_elasticache_cluster
select * from aws_elasticsearch_domain
select * from aws_ec2_instance
select * from all_aws.aws_ecr_repository
select * from all_aws.aws_lambda_function
select * from all_aws.aws_kinesis_stream
select * from all_aws.aws_cost_forecast_monthly where period_start <= 'today'
select account_id,sp_connection_name,runtime,count(*) from all_aws.aws_lambda_function group by account_id, sp_connection_name, runtime order by count desc, account_id

select account_id,sp_connection_name,runtime,count(*) from all_aws.aws_lambda_function where runtime not in (select version from csv.k8s where allow = 'true')  group by account_id, sp_connection_name, runtime order by count desc, account_id

select account_id,sp_connection_name, count(*) from all_aws.aws_ec2_instance group by account_id, sp_connection_name order by count desc