{ ... }:
{
  imports = [
    # Hardware (Strix Halo APU, GTT/ROCm) lives in the shared ms-s1 module;
    # LLM serving is deployed via the nishir Kubernetes cluster (shikanime-labs/manifests),
    # not as a NixOS systemd service. This host is the kushira half of the
    # llama.cpp RPC pair that serves DeepSeek V4 Flash 0731 (orchestrator side).
    ../../modules/nixos/hardware/minisforum-ms-s1.nix
  ];
  networking.hostName = "kushira";
}
