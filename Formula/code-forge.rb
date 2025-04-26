class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v0.78.4"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v0.78.4/forge-x86_64-apple-darwin"
    sha256 "a29c1346db52ffa505376039f5693dd6b40a57078bf8425e3d3598ce71c666d5"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v0.78.4/forge-aarch64-apple-darwin"
    sha256 "69172278e9c35b77c0e503eeca1c6b1a6a864fe79dafa00c14719828f362d458"
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
