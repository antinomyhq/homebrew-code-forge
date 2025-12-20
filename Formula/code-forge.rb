class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v1.13.0"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v1.13.0/forge-x86_64-apple-darwin"
    sha256 "c6ff75cb45effbe02889be0cead81f9eea34d8fd012b09c6561434bbec7733d6"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v1.13.0/forge-aarch64-apple-darwin"
    sha256 "41f274261559fe95894b9672d803e43b98b3bc06fa572f0f5d8f7fb40da59e4b"
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
