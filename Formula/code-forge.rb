class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v0.100.6"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v0.100.6/forge-x86_64-apple-darwin"
    sha256 "264955e3235a35a1717ac50ffbd21a7b1e9fe15e8901270ac0c945f18ccbe0a5"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v0.100.6/forge-aarch64-apple-darwin"
    sha256 "8e5cdf4d503a11d086deb67934f0db418211daaba4ffacdae66dd4f8276f73cb"
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
