class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v0.3.2"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v0.3.2/forge-x86_64-apple-darwin"
    sha256 "1f7478c6a6dc94bc99273a64dde9f332966f5902daddaeed1542321d715da0ea"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v0.3.2/forge-aarch64-apple-darwin"
    sha256 "77fed75fde23e26c69ada1df158e343c69a19d628447b72ad61c195b79040fdf"
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
