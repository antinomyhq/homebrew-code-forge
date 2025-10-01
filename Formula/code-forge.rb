class CodeForge < Formula
  desc "CodeForge CLI - A powerful tool for managing your code workflow"
  homepage "https://example.com"
  version "v0.122.0"
  
  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://release-download.tailcall.workers.dev/download/v0.122.0/forge-x86_64-apple-darwin"
    sha256 "92ecf82b2898b8bcf2cc6dc0b0940c5052e613266abbe5597481d356109fd47d"
  elsif Hardware::CPU.arm?
    url "https://release-download.tailcall.workers.dev/download/v0.122.0/forge-aarch64-apple-darwin"
    sha256 "d248f8b30bc5bf53c48819538f69df1dfaf13b1265c15449ee4276b09ee5d7b3"
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
