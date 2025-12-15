class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v1.11.0"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v1.11.0/forge-x86_64-apple-darwin"
    sha256 "009ab56e44e6829ffcc5e16105203b0ffc3fe31aa084dd6ece3f4fb834da9753"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v1.11.0/forge-aarch64-apple-darwin"
    sha256 "00c36b0f27c27e8dad4eb9ae18cdace95ca5120fb8581243751c01a4bfa44726"
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
