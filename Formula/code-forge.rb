class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v0.51.7"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v0.51.7/forge-x86_64-apple-darwin"
    sha256 "991331b64d203021371771f93376aae418b652ae9dcd535d5d895ca098d289fe"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v0.51.7/forge-aarch64-apple-darwin"
    sha256 "65a1045614485790b72bb1034ae25261ee7c89670e15ad6c87bac1bb171dc950"
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
