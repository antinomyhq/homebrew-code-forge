class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v0.85.1"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v0.85.1/forge-x86_64-apple-darwin"
    sha256 "47248b6d5b8004e887658544874d5f93d156f20fb2cfb71f503dd0b9313f6810"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v0.85.1/forge-aarch64-apple-darwin"
    sha256 "fc0f25993e41c4e7a05f54bb31d655a4c6f2d165724a61da63bfe0af922257cf"
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
