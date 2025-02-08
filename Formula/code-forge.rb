class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v0.6.0"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v0.6.0/forge-x86_64-apple-darwin"
    sha256 "89302996ca5aced925379a455059791ab1a54eb099abea66dd8c4f0399897b9e"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v0.6.0/forge-aarch64-apple-darwin"
    sha256 "e19a2e9208004708dd5fbe670f47bc2d9f504a53964cc5cbad272d1449cfbd73"
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
