# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://www.rubydoc.info/github/Homebrew/brew/master/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Buteemj < Formula
  desc "buteemj app"
  homepage "http://www.starsoft.mn"
  url "https://github.com/olzii/buteemj/archive/v1.0.8.tar.gz"
  sha256 "b0285f2fe3431414dfbe63d00ae0b7c4efad9422b6519e948658d0fb39f5c3c4"
  # depends_on "cmake" => :build

  def install
    	# ENV.deparallelize  # if your formula fails when building in parallel
    	# Remove unrecognized options if warned by configure
    #system "./configure", "--disable-debug",
    #                      "--disable-dependency-tracking",
    #                      "--disable-silent-rules",
    #                      "--prefix=#{prefix}"
    # system "cmake", ".", *std_cmake_args
    # system "make", "install" # if this fails, try separate make/make install steps
	# system "install"
	#bin.install "buteemj-macos"
	#bin.install Dir["*"]
	#prefix.install "buteemj-macos"

	  # If your formula's build system is not thread safe:
      ENV.deparallelize

	  bin.install "binding.node"
	  bin.install "config.json"
	  bin.install "ffi_bindings.node"

	  bin.install "iconv.node"
	  bin.install "node_sqlite3.node"
	  bin.install "screenshot.node"
	  bin.install "snapshot.dat"
	  bin.install "install.sh"
	  bin.install "main"
	  bin.install "buteemj-macos"

	  system "chmod u+w #{bin}/snapshot.dat"
	 # system "#{bin}/install.sh" #, "--arg1", "--prefix=#{prefix}"
	  # chmod ugo+w snapshot.dat

	#  system "install"
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test buteemj`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
	# system "#{bin}/buteemj-macos", "--version"
  end

  # Does your plist need to be loaded at startup?
  plist_options :startup => true

  # Define this method to provide a plist.
  # Looking for another example? Check out Apple's handy manpage =>
  # https://developer.apple.com/library/mac/documentation/Darwin/Reference/ManPages/man5/plist.5.html
  def plist; <<-EOS
    <?xml version="1.0" encoding="UTF-8"?>
    <!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
    <plist version="1.0">
    <dict>
      <key>Label</key>
        <string>buteemj-macos</string>
      <key>ProgramArguments</key>
      <array>
        <string>#{bin}/buteemj-macos</string>
      </array>
      <key>RunAtLoad</key>
      <true/>
      <key>KeepAlive</key>
      <false/>
      <key>AbandonProcessGroup</key>
      <true/>
	  <key>ProcessType</key>
      <string>Background</string>
      <key>Nice</key> <integer>-5</integer>
      <key>StandardErrorPath</key>
      <string>#{bin}/error.txt</string>
      <key>StandardOutPath</key>
      <string>#{bin}/log.txt</string>
	  <key>WorkingDirectory</key>
      <string>#{bin}</string>
	  </dict>
    </plist>
    EOS
  end

end
