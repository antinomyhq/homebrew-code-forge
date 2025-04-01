class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v0.55.1"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v0.55.1/forge-x86_64-apple-darwin"
    sha256 "e6a9fd86f11226b91276084d132a95a8a473402eadc87dbd626bd697fa0730c0"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v0.55.1/forge-aarch64-apple-darwin"
    sha256 "61f1b4f0157f0477cd28818deeb70f93f481dc48b0a8dc6f7f670dfbc18516f0"
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
