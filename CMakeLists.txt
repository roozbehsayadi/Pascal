cmake_minimum_required (VERSION 3.0)
include("${CMAKE_CURRENT_LIST_DIR}/cmake/enable_pascal.cmake")
enable_pascal("${CMAKE_BINARY_DIR}${CMAKE_FILES_DIRECTORY}/${CMAKE_VERSION}" "${CMAKE_CURRENT_LIST_DIR}/cmake/radioutils-pascal_onlymodules")

project (PascalPrograms Pascal)

add_executable(COUNTER1 COUNTER1.PAS)
add_executable(CaesarCipher CaesarCipher.PAS)
add_executable(DateConverter DateConverter.pas)
add_executable(DivideByThree DivideByThree.pas)
add_executable(EvenOrOdd EvenOrOdd.pas)
add_executable(FahrenheitToCelsius FahrenheitToCelsius.pas)
add_executable(Falgiri Falgiri.PAS)
add_executable(Loan Loan.pas)
add_executable(MOSALLAS MOSALLAS.PAS)
add_executable(MultplicationTable MultplicationTable.pas)
add_executable(SumAndCounter SumAndCounter.pas)

