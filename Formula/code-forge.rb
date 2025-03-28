class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v0.52.0"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v0.52.0/forge-x86_64-apple-darwin"
    sha256 "56d99b3d4e5e5801abb3ca11d2f0773ef7cd19ad3ece895d60293cc9ebb940ba"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v0.52.0/forge-aarch64-apple-darwin"
    sha256 "38e64a4224fb5d19c514d0f03be5eb6c7ce230e49e66839d5c2cea7ac418ce6c"
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
