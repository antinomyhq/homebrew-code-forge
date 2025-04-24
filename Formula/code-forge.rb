class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v0.76.1"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v0.76.1/forge-x86_64-apple-darwin"
    sha256 "72c551834dff3512f223e2e88a7679a47bb23450045850d6c5174c4072af5409"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v0.76.1/forge-aarch64-apple-darwin"
    sha256 "0ac8355e522ac47be56390c25027010fd1704560ae8b8fdecd1902ecd9b89139"
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
