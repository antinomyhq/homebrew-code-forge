class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v0.70.0"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v0.70.0/forge-x86_64-apple-darwin"
    sha256 "596056e2495f1811cd0d2e66eb44137c4abc6d80d1f87c6ed1e1ee16410283ad"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v0.70.0/forge-aarch64-apple-darwin"
    sha256 "0e5937df8ff5c28280cca19e60618b7278f78b43cbf54d904ca2d07d9089f020"
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
