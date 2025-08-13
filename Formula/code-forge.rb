class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v0.107.0"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v0.107.0/forge-x86_64-apple-darwin"
    sha256 "c4bd969e5c63e1dcc492a864ee9b38f7d682d6a080dd78af3208344d3d4331ee"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v0.107.0/forge-aarch64-apple-darwin"
    sha256 "1bc0925e624760d08c4d0c24cd7e31a5f25b7b100b89365bff60db067272ea93"
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
