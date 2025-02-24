class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v0.24.0"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v0.24.0/forge-x86_64-apple-darwin"
    sha256 "9949840289cbfcd923750019300fa7525b69c80db611a28b12dd16aec667772d"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v0.24.0/forge-aarch64-apple-darwin"
    sha256 "162fedc7e7058dfeaf2a897861de8b3901e0a7ab762cf49379d67cdfa1e53033"
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
