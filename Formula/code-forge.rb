class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v0.112.0"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v0.112.0/forge-x86_64-apple-darwin"
    sha256 "16cf0705a6dfbd9974457f88301495c1955f0b53e88393c2f759634580127e9e"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v0.112.0/forge-aarch64-apple-darwin"
    sha256 "87b0badb4bc0ec659c17a34a3ab059889f088407f74d0c52c36baf9eb5604c4e"
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
