class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v0.109.2"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v0.109.2/forge-x86_64-apple-darwin"
    sha256 "a1d3c93abdece5d240a437c5a4c1e5b2463002be60c49762f2c6518becb0b76a"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v0.109.2/forge-aarch64-apple-darwin"
    sha256 "357ce12079086d3241a2c73ff876f09acf690151ad844998009299c0788b6b23"
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
