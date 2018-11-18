use Mix.Releases.Config,
  default_release: :pc,
  default_environment: Mix.env()

environment :dev do
  set(dev_mode: true)
  set(include_erts: false)
  set(cookie: :"zRNE~W>KEMWAgL@CzO^1e8D<BcuIJhgLdxi?&1C!%6nM(Q36T[vYuXNw2E4m<pL5")
end

environment :prod do
  set(include_erts: true)
  set(include_src: false)
  set(cookie: :"Ss3W*qZ8HBj%?SLr|/K~UWb8b_/)Zd.Jmo4uKcLPcTXe>>k2%_k@:h^Yht`8me(6")
  set(vm_args: "rel/vm.args")
end

release :pc do
  set(version: current_version(:pc))

  set(
    applications: [
      :runtime_tools
    ]
  )
end
