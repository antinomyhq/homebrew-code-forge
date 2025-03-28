class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v0.52.1"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v0.52.1/forge-x86_64-apple-darwin"
    sha256 "275a443cbd209ec11bc546b1ecb6d103bb8e84cec3098be7648964069189ce60"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v0.52.1/forge-aarch64-apple-darwin"
    sha256 "55fc0ccb47074cdb3aa21f2d02daf47f788cbff1e1408dadd1c1f9cfcc898099"
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
