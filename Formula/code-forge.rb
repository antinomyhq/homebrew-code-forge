class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v0.94.0"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v0.94.0/forge-x86_64-apple-darwin"
    sha256 "7c202f7a6d91a065d5c8ccd79b72c8ec63ced0026d0267d215967218321f1196"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v0.94.0/forge-aarch64-apple-darwin"
    sha256 "8c7768f6762d7b05092341c7b153c7a7c4965e40c2ed86ef654bfbcb1919cad3"
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
