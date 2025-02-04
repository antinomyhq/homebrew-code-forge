class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v0.3.1"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v0.3.1/forge-x86_64-apple-darwin"
    sha256 "29453c3268012667f88fce8dc8730f0d304367a81f049fef0625cd14f9544f25"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v0.3.1/forge-aarch64-apple-darwin"
    sha256 "5c1e785a1283439beb8481c4b775a3886c13304813f31cb43104ba11b46ca47f"
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
