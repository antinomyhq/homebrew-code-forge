class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v0.38.1"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v0.38.1/forge-x86_64-apple-darwin"
    sha256 "d5f9797864579c5de39e2927bc24612ade822c5cc7fab6846991c081e1f9e089"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v0.38.1/forge-aarch64-apple-darwin"
    sha256 "48f3845bdf3ca126d340c350a8674e737e06fc930652071d866590c15a24a29a"
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
