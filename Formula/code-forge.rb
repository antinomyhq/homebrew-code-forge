class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v0.101.1"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v0.101.1/forge-x86_64-apple-darwin"
    sha256 "f6f8789b2d53abd0246086b55c1fbf86b18aafd7e5634eaf7639d90911b010a3"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v0.101.1/forge-aarch64-apple-darwin"
    sha256 "bea7ee34480e9aa82f743e127b3121ed943967391fa8b4d2e23da0aa1c8f5106"
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
