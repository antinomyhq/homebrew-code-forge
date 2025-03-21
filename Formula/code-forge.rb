class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v0.51.3"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v0.51.3/forge-x86_64-apple-darwin"
    sha256 "bb10195081833bcbfb6d10ec3c56e3e766932dfb5aa34d747293d998001d65f9"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v0.51.3/forge-aarch64-apple-darwin"
    sha256 "5bc53277372e1318a1882f1b9191dcf32695d7d8bbd8e3573c2206fd841f7a2e"
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
