Vagrant.configure("2") do |config|
  config.vm.provider "docker" do |d|
    d.vagrant_vagrantfile = "../_dev-vm/Vagrantfile"
    d.build_dir = "."
    d.build_args = ["-t","phase2/servicebase"]
    d.name = "phase2servicebase"
    d.has_ssh = true
  end
end

