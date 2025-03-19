class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v0.49.0"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v0.49.0/forge-x86_64-apple-darwin"
    sha256 "0ab8cbdb4183427c1b95361c799cc1dec63a0694f0ad8cd5ce4df7aecd475757"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v0.49.0/forge-aarch64-apple-darwin"
    sha256 "945624d1d42b1e3ae3b94c3bcd6ae800be6f3d3bcdc1c9cc95b9bf39774b32b9"
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
