class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v1.4.0"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v1.4.0/forge-x86_64-apple-darwin"
    sha256 "ed3f3984c050716057e8b4438df948bfa56e0c11881b243efb27e7df4f85e563"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v1.4.0/forge-aarch64-apple-darwin"
    sha256 "421d55f1eefd554739a8a0d350f8d7305a5a7eb0fc9723429f21f2b121b579e9"
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
