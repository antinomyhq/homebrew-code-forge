class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v0.102.1"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v0.102.1/forge-x86_64-apple-darwin"
    sha256 "b30697d7cae0a777fe647bc3dc520ad7f060434ec3764aeba4074937c64edce9"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v0.102.1/forge-aarch64-apple-darwin"
    sha256 "a08c385ab5e30dfc1db7f8aae85a906bff69369e0e40590a7c6526e37647cf01"
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
