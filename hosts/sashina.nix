{ ... }:
{
  imports = [
    # Hardware (Strix Halo APU, GTT/ROCm) lives in the shared ms-s1 module;
    # LLM serving is deployed via the nishir Kubernetes cluster (shikanime-labs/manifests),
    # not as a NixOS systemd service. This host is the sashina half of the
    # llama.cpp RPC pair (RPC-server side for DeepSeek; orchestrator for Qwen3.8-27B).
    ../../modules/nixos/hardware/minisforum-ms-s1.nix
  ];
  networking.hostName = "sashina";
}
