class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v1.3.0"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v1.3.0/forge-x86_64-apple-darwin"
    sha256 "182d6aa8f2edcb878e7ffdba8a99834f5b7e3cec00a6f41eaf34287021830847"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v1.3.0/forge-aarch64-apple-darwin"
    sha256 "1c067b0fee4f99c30b18f7ea7f510a392d8a6c1d70389fde08fb2f4a707e84dd"
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
