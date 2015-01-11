require 'formula'

class Msp430Mcu < Formula
  homepage 'http://mspgcc.sourceforge.net'
  url 'http://sourceforge.net/projects/mspgcc/files/msp430mcu/msp430mcu-20120716.tar.bz2'
  sha1 '6672d9e5e6a76764129fae93e59c94489a356ffe'
  
  def install
    # Create the "bin" directory for installation. The install.sh script
    # expects this to exist.
    Dir.mkdir "#{prefix}/bin"

    # As suggested by the README.
    ENV['MSP430MCU_ROOT'] = Dir.pwd
    system "./scripts/install.sh", prefix
  end
end
