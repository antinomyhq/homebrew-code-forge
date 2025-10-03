class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v0.122.2"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v0.122.2/forge-x86_64-apple-darwin"
    sha256 "ccf871f4e1122556fe1df52a96770eb9e5ea8be520553b6f9f602887d924107a"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v0.122.2/forge-aarch64-apple-darwin"
    sha256 "d4fa5de3958ccd4dbc4cb9f933bf5977425a789a6f81ae557a4f8c4b1cf445dc"
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
