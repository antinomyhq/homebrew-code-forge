class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v0.77.0"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v0.77.0/forge-x86_64-apple-darwin"
    sha256 "c189b867267c384dfba33bbb55098e4aa1fa5845a2cb309c8dc06f5d72dc4d7c"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v0.77.0/forge-aarch64-apple-darwin"
    sha256 "f0a62f3425921fe446a602d32a9018a8a09f7e2c4735e1cac054946b4a5db1d3"
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
