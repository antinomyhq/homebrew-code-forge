class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v0.47.0"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v0.47.0/forge-x86_64-apple-darwin"
    sha256 "6b1387a14b3914a08fd1d57414d681acd1b4d20bc6ae2142ee02f934d9576ae5"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v0.47.0/forge-aarch64-apple-darwin"
    sha256 "8af6b6c6c1a75cd329e90297f80094b1ec7b330eb5e416e1f762bebcaa3d98d4"
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
