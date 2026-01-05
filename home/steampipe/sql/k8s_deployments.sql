select name, namespace, replicas context_name from k8s_all.kubernetes_deployment


select count(*) as deployments, sum(replicas) as replicas from k8s_all.kubernetes_deployment
select count(*) as pods, count(distinct(namespace)) as namespaces from k8s_all.kubernetes_pod