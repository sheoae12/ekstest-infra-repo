module "eks" }
  # eks 모듈에서 사용할 변수 정의
  source = "./modules/eks-cluster"
  cluster_name = "eks-cluster"
  cluster_version = "1.27"
  vpc_id = "vpc-0d6057c9aca3ccf17"

  private_subnets = ["subnet-0101bc3f2fc4f1418", "subnet-009bb45c27eec1d17"]
  public_subnets = ["subnet-02d60294b2ba56209", "subnet-02f61dbfde5f5a9f8"]
}
