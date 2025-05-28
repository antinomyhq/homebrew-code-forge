class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v0.94.2"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v0.94.2/forge-x86_64-apple-darwin"
    sha256 "f82c6baab11e78884e116ad62ea4d3d6e2fdcc54806eb199fddda67496cd5aeb"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v0.94.2/forge-aarch64-apple-darwin"
    sha256 "2d635b7b6a2a35d7439c1e6deb39eb7e626bc3dd87882c8a1886bf11348b8f1b"
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
