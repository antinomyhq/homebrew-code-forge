class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v0.87.0"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v0.87.0/forge-x86_64-apple-darwin"
    sha256 "4bb2d55c4b2ebe35dbf1b673399ba455c070c1c2b4945dcbd31a07f91bfab5be"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v0.87.0/forge-aarch64-apple-darwin"
    sha256 "9fba6637b0f480e6f3955941811dde643e8f5510cc5302c3bae0db0cf3467431"
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
