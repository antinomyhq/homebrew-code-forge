class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v0.44.0"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v0.44.0/forge-x86_64-apple-darwin"
    sha256 "11c6f8430b64cfd724828dece9adb6e9bc9edbef5d7b60c4e9f840767d7ae45d"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v0.44.0/forge-aarch64-apple-darwin"
    sha256 "45f9563c6d097be62cea38d61480dc9b04993ae05fae8a775a6c2246f61acd08"
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
