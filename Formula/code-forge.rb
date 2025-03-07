class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v0.32.1"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v0.32.1/forge-x86_64-apple-darwin"
    sha256 "0c3659162aed095a70b0d11850ad71f3f6bdb2d007d90095ba31847f3ad8b8e8"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v0.32.1/forge-aarch64-apple-darwin"
    sha256 "75950613674a465745798ffc69694060709bf64106a2b9c7685fe5af47915cfd"
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
