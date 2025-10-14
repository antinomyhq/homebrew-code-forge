class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v0.126.0"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v0.126.0/forge-x86_64-apple-darwin"
    sha256 "e319f4ae70de20c1c82a2e7b7d3f4fa4411bd5ce56aa35d03734fbeb806b6d62"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v0.126.0/forge-aarch64-apple-darwin"
    sha256 "905f21e7ce6d8876824024e880bb61f9900f1bb5acc7f38b3e3cfd036bf075ae"
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
