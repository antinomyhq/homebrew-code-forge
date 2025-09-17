class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v0.119.0"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v0.119.0/forge-x86_64-apple-darwin"
    sha256 "60058608c7b053905e5f027275dddf1eff2c1dd3b5432357d76f7c334a16ffb2"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v0.119.0/forge-aarch64-apple-darwin"
    sha256 "e4ba744a5f273a3b45166b3ce950cb7b4604507b475b229c650f8cf30204d6f3"
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
