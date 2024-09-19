

access_entries = {
    # One access entry with a policy associated
    phanindra = {
      kubernetes_groups = []
      principal_arn     = "arn:aws:iam::767397784250:user/test-user"

      policy_associations = {
        single = {
          policy_arn = "arn:aws:eks::aws:cluster-access-policy/AmazonEKSClusterAdminPolicy"
          access_scope = {
            type       = "cluster"
          }
        }
      }
    }
}
   