class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v0.86.0"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v0.86.0/forge-x86_64-apple-darwin"
    sha256 "b8efe027c4c27455e6c429374ab21fc091dad2635b44067333737cf118c3a8b2"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v0.86.0/forge-aarch64-apple-darwin"
    sha256 "6bb7d952b8fc1058ffbbfd45d3339767587e21c845ac006355568aac6fdd10c8"
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
