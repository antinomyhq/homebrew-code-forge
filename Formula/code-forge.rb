class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v1.1.0"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v1.1.0/forge-x86_64-apple-darwin"
    sha256 "510083868e88a5fab2dfc0a63c0a10b686036eac942072d16eb23ca15096c0cf"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v1.1.0/forge-aarch64-apple-darwin"
    sha256 "f2e0342ed6ec859c2159304ce3ab96fb43a02a7c1544d9bd79a9c35c374f7e55"
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
