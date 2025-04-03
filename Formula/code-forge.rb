class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v0.58.0"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v0.58.0/forge-x86_64-apple-darwin"
    sha256 "705c56175f7976eb5936bdd3fd572361d85784b65a51e460b9e83fa28b13f6c7"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v0.58.0/forge-aarch64-apple-darwin"
    sha256 "f1bdfba5d9a20ef522206d9cd96313397d63c3b072358ebaf4b8fee4498a0b7f"
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
