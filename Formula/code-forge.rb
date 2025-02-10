class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v0.13.3"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v0.13.3/forge-x86_64-apple-darwin"
    sha256 "cfe9b870b27b0a872d762142e01f8b8ecca3eb998b6140b0ceacc02e26791405"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v0.13.3/forge-aarch64-apple-darwin"
    sha256 "5688f6b1549aca11d9cca65cc4d2d5942c90b1303599a93662c357dded4939c6"
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
