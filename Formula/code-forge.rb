class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v0.94.5"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v0.94.5/forge-x86_64-apple-darwin"
    sha256 "4d3f526aab81a2a10d47d57d63e4db7a2c2e2e79ed89f088daa8474acc412517"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v0.94.5/forge-aarch64-apple-darwin"
    sha256 "7bdd2455c9e4a9e739cfeb95ae4f917168c855524f4123abc7966459a4a0abd2"
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
