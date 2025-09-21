class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v0.120.0"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v0.120.0/forge-x86_64-apple-darwin"
    sha256 "941712a66ba16dfbec4f3c25db16337babdaae84c3ee5ff5feb84a5a1b66f9ff"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v0.120.0/forge-aarch64-apple-darwin"
    sha256 "deb1d0e975ec7ea90e133084559fe17f5bca50f99c54fab2e025121cc8543d8a"
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
