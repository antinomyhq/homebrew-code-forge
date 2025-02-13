class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v0.19.0"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v0.19.0/forge-x86_64-apple-darwin"
    sha256 "fa906026d7061c8331cdb6d442a34d01aa3162424d52aadc7604d6508e195903"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v0.19.0/forge-aarch64-apple-darwin"
    sha256 "fa906026d7061c8331cdb6d442a34d01aa3162424d52aadc7604d6508e195903"
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
