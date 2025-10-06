// XmVector.cpp : This file contains the 'main' function. Program execution begins and ends there.
//
#include <Windows.h>
#include <DirectXMath.h>
#include <DirectXPackedVector.h>
#include <iostream>

using namespace std;
using namespace DirectX;
using namespace DirectX::PackedVector;

// overload the "<<" operators so that we can cout to output XMVECTOR objects.
std::ostream& XM_CALLCONV operator <<(std::ostream& os, DirectX::FXMVECTOR v)
{
  DirectX::XMFLOAT3 dest;
  DirectX::XMStoreFloat3(&dest, v);

  os << "(" << dest.x << ", " << dest.y << ", " << dest.z << ")";
  return os;
}

int main()
{
  std::cout.setf(std::ios_base::boolalpha);

  // Check support for SSE2 (Pentium4, AMD K8, and above).
  if(!DirectX::XMVerifyCPUSupport())
  {
    std::cout << "directx math not supported." << std::endl;
    return 0;
  }

  DirectX::XMVECTOR n = DirectX::XMVectorSet(1.0f, 0.0f, 0.0f, 0.0f);
  DirectX::XMVECTOR u = DirectX::XMVectorSet(1.0f, 2.0f, 3.0f, 0.0f);
  DirectX::XMVECTOR v = DirectX::XMVectorSet(-2.0f, 1.0f, -3.0f, 0.0f);
  DirectX::XMVECTOR w = DirectX::XMVectorSet(0.707f, 0.707f, 0.0f, 0.0f);

  // Vector addition: XMVECTOR operator +
  DirectX::XMVECTOR a = u + v;

  // Vector subtraction: XMVECTOR operator -
  DirectX::XMVECTOR b = u - v;

  // Scalar multiplication: XMVECTOR operator *
  XMVECTOR c = 10.0f * u;

  // ||u||
  XMVECTOR L = XMVector3Length(u);

  // d = u / ||u||
  XMVECTOR d = XMVector3Normalize(u);

  std::cout << "u                = " << u << std::endl;
  std::cout << "v                = " << v << std::endl;
  std::cout << "w                = " << w << std::endl;
  std::cout << "n                = " << n << std::endl;
  std::cout << "a = u + v        = " << a << std::endl;
  std::cout << "b = u - v        = " << b << std::endl;
  std::cout << "c = 10 * u       = " << c << std::endl;
  std::cout << "L = ||u||        = " << L << std::endl;
  std::cout << "d = u / ||u||    = " << d << std::endl;
}
