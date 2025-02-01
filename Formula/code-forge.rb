class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v0.2.0"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v0.2.0/forge-x86_64-apple-darwin"
    sha256 "007fe99dd0d9911d9b0818ea20caaa5e890ea9acfce3aa2f24b316c2ab2e05c3"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v0.2.0/forge-aarch64-apple-darwin"
    sha256 "5309c5ff03a62fde2665aa34590c7315b2f9a138d3ea6b3974b77b89a2d24f1e"
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
