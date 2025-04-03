class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v0.57.0"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v0.57.0/forge-x86_64-apple-darwin"
    sha256 "eea12801b1159f84aa19459c3c0ecbd8ef9bef46950716539d243f27c65701a2"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v0.57.0/forge-aarch64-apple-darwin"
    sha256 "47c736634ea12230ca869f654dd825fdec17dc7173aac9c27bbc3e7d9523eb05"
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
