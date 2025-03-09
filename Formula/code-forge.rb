class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v0.34.0"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v0.34.0/forge-x86_64-apple-darwin"
    sha256 "58d43cad3cca75eefe2c378226c4b7bd2187cac60689f4f7e24ebd439e580645"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v0.34.0/forge-aarch64-apple-darwin"
    sha256 "48a6bada695d66885ec1a74f396446347563feeed99f29421535040e70bd1839"
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
