class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v0.2.5"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v0.2.5/forge-x86_64-apple-darwin"
    sha256 "520734cd595d3fc51b6e25aba40056a6d184b48f0065e20932a4a7d5ffbe108e"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v0.2.5/forge-aarch64-apple-darwin"
    sha256 "8dc4d112a31046d0fb3dbf0f6d4636d4704982c174b90dd45a93b20545b5f4dc"
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
