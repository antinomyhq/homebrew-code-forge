class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v0.100.8"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v0.100.8/forge-x86_64-apple-darwin"
    sha256 "ac113b984f90aa14c788e051145ff9b4a390e27cd7a4c210f615d374b8ab73d3"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v0.100.8/forge-aarch64-apple-darwin"
    sha256 "40fddf0bcb513567302598bae3c5c98b00c9ea8950c7b3abf7e394c84dcfdddf"
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
