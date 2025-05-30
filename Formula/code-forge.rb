class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v0.94.3"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v0.94.3/forge-x86_64-apple-darwin"
    sha256 "0f15a75dcd5ef6369574f50c55c8bd5d842893d19415ab871f8ca1626b1ae8ad"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v0.94.3/forge-aarch64-apple-darwin"
    sha256 "572ffce9d835c0518828859e2ab0735b03c0c85f82fdeb4faf7703f804148535"
  end

  def install
    if Hardware::CPU.intel?
        executable_name = "forge-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "forge-aarch64-apple-darwin"
    end
    bin.install executable_name => "forge"
  end
end
