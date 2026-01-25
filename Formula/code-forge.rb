class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v1.21.0"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v1.21.0/forge-x86_64-apple-darwin"
    sha256 "89421db58278fd3101170cf06c93b6cf4c58f6a189fbed11747357bfbff81f54"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v1.21.0/forge-aarch64-apple-darwin"
    sha256 "758b28be2a0aa3b581be12b5f355925db40bfd171c28e566bd8450cb3c3898ef"
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
