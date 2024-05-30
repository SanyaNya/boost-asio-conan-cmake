#cmake-3.19+ required for presets
cmake_minimum_required(VERSION 3.19)

project(boost-asio-conan-cmake)

#Asio dependencies:
#https://www.boost.org/doc/libs/1_85_0/doc/html/boost_asio/using.html#boost_asio.using.dependencies
find_package(Boost REQUIRED COMPONENTS 
  headers # Asio is header only
  system
  #coroutine # Optional
  #regex     $ Optional
)

# Optional
#find_package(OpenSSL REQUIRED COMPONENTS SSL Crypto)

add_executable(client src/client.cpp)
target_link_libraries(client
  Boost::headers
  Boost::system
  #Boost::coroutine
  #Boost::regex
  #OpenSSL::SSL
  #OpenSSL::Crypto
)

add_executable(server src/server.cpp)
target_link_libraries(server
  Boost::headers
  Boost::system
  #Boost::coroutine
  #Boost::regex
  #OpenSSL::SSL
  #OpenSSL::Crypto
)
