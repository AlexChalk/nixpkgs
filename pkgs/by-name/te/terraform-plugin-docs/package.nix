{ buildGoModule, fetchFromGitHub, lib }:

buildGoModule rec {
  pname = "terraform-plugin-docs";
  version = "0.14.1";

  src = fetchFromGitHub {
    owner = "hashicorp";
    repo = "terraform-plugin-docs";
    rev = "v${version}";
    sha256 = "sha256-GiMjm7XG/gFGOQXYeXsKbU7WQdrkQ0+J/SvfbLu24bo=";
  };

  vendorHash = "sha256-qUlyOAiLzLgrtaAfs/aGpAikGmGcQ9PI7QRyp9+Qn4w=";

  meta = with lib; {
    description = "Generate and validate Terraform plugin/provider documentation";
    homepage = "https://github.com/hashicorp/terraform-plugin-docs";
    changelog = "https://github.com/hashicorp/terraform-plugin-docs/releases/tag/v${version}";
    license = licenses.mpl20;
    mainProgram = "tfplugindocs";
    maintainers = with maintainers; [ lewo ];
  };
}
