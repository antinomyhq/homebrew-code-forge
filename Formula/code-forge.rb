class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v0.76.0"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v0.76.0/forge-x86_64-apple-darwin"
    sha256 "1558ee6ef81d4e71a0a0c8583e50aeb172d3a5810103016b09223bc19923d446"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v0.76.0/forge-aarch64-apple-darwin"
    sha256 "ed16a959e84fcb3fc9afcbd2448818e4206857e2c41ddd656635a7ed863daabe"
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
