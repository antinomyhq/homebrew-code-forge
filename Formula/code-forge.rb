class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v0.9.0"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v0.9.0/forge-x86_64-apple-darwin"
    sha256 "59ea0f372f014b9941078bc57f779af7082bee81fda5df89cb879698f1d5e24c"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v0.9.0/forge-aarch64-apple-darwin"
    sha256 "209329e6be4c60c7abb9c1c04bc4ceb143787cdf51158d933de1812b1b9bb88f"
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
