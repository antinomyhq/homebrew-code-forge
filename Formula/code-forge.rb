class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v0.98.1"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v0.98.1/forge-x86_64-apple-darwin"
    sha256 "ceb107d77be61cba36dbecdc9c858a2c389478d9096760c50c14701322fc47c3"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v0.98.1/forge-aarch64-apple-darwin"
    sha256 "ccbd3aea9dfde4453077ff466be00af7403aab4c3276433ea5b4ee7dc02c5c0e"
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
