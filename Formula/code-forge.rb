class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v0.125.1"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v0.125.1/forge-x86_64-apple-darwin"
    sha256 "3dea0bd3416c1a69d5d05e04f9359c60d114f207e76a4859b243651a1c929e4c"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v0.125.1/forge-aarch64-apple-darwin"
    sha256 "4f81b5b71a9b5103c6eaad10592b13ba7bd76ec07cb53d808241b637b03cd696"
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
