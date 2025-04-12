class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v0.64.2"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v0.64.2/forge-x86_64-apple-darwin"
    sha256 "c5ccfc9161575db8e458bfd567e0aada7696bf7358dc0322fe96046dc7eb9b99"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v0.64.2/forge-aarch64-apple-darwin"
    sha256 "3db6e47ca0c35c485a5f406d0de87508512be2d138fdaaecb4a61b25d3bb16cd"
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
