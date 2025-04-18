class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v0.72.0"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v0.72.0/forge-x86_64-apple-darwin"
    sha256 "fedd164b743fb55f74e9487b5e9042c8431412f0f14028d09837272cff2183d6"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v0.72.0/forge-aarch64-apple-darwin"
    sha256 "5842d406664f10ea8f7217dd80b2d0d029aa71f495bc79351670bf84bc909d11"
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
