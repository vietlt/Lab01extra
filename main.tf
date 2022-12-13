module "network" {
  source = "./modules/network/"
}

module "compute" {
  source                  = "./modules/compute/"
  vpc_id_param            = module.network.lab_vpc_out
  linux_subnet_id_param   = module.network.linux_subnet_out
  windows_subnet_id_param = module.network.windows_subnet_out
}
