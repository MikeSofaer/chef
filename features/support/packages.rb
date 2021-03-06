# Provides a method to quickly lookup whether we have
# a given packaging system installed.
def package_system_available?(name)
  case name
  when 'MacPorts'
    uname = `uname`
    port = `which port`
    (uname =~ /Darwin/ && !port.match(/not found/) && File.exist?('/opt'))
  else
    false
  end
end
