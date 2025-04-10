class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v0.63.0"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v0.63.0/forge-x86_64-apple-darwin"
    sha256 "05d0033074d7f9e2bb81127e796539800f68ce92d4d0b199777e359029e26ebc"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v0.63.0/forge-aarch64-apple-darwin"
    sha256 "ae92d6cd8f447a637ac72495495502e23c3d7d58b74b8d6ac0046f1ad384ca45"
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
