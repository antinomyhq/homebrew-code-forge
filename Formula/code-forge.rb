class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v0.43.0"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v0.43.0/forge-x86_64-apple-darwin"
    sha256 "ceee2d4b8083b15aeea262406c5f78e37a5e155db485d8ae529670ba40269de1"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v0.43.0/forge-aarch64-apple-darwin"
    sha256 "08a3a75ce2ecc05abe39502dad71d9cf631ec634080f7459b1281e19c20f54dc"
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
