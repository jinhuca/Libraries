// XMMATRIX.cpp
#include <Windows.h>
#include <DirectXMath.h>
#include <DirectXPackedVector.h>
#include <iostream>

// Overload the "<<" operators so that we can use cout to output XMVECTOR and XMMATRIX objects.
std::ostream& XM_CALLCONV operator<<(std::ostream& os, DirectX::FXMVECTOR v) {
  DirectX::XMFLOAT4 dest;
  XMStoreFloat4(&dest, v);
  os << "(" << dest.x << ", " << dest.y << ", " << dest.z << ", " << dest.w << ")";
  return os;
}

std::ostream& XM_CALLCONV operator << (std::ostream& os, DirectX::FXMMATRIX m)
{
  for (int i = 0; i < 4; ++i)
  {
    os << DirectX::XMVectorGetX(m.r[i]) << "\t";
    os << DirectX::XMVectorGetY(m.r[i]) << "\t";
    os << DirectX::XMVectorGetZ(m.r[i]) << "\t";
    os << DirectX::XMVectorGetW(m.r[i]);
    os << std::endl;
  }
  return os;
}

int main()
{
  // Check support for SSE2 (Pentium, AMD)
  if (!DirectX::XMVerifyCPUSupport()) {
    std::cout << "directx math not supported.\n";
    return 0;
  }
  DirectX::XMMATRIX A(
    1.0f, 0.0f, 0.0f, 0.0f,
    0.0f, 2.0f, 0.0f, 0.0f,
    0.0f, 0.0f, 4.0f, 0.0f,
    1.0f, 2.0f, 3.0f, 1.0f);

  DirectX::XMMATRIX B = DirectX::XMMatrixIdentity();

  DirectX::XMMATRIX C = A * B;

  DirectX::XMMATRIX D = XMMatrixTranspose(A);

  DirectX::XMVECTOR det = XMMatrixDeterminant(A);
  DirectX::XMMATRIX E = XMMatrixInverse(&det, A);

  DirectX::XMMATRIX F = A * E;

  std::cout << "A = " << std::endl << A << std::endl;
  std::cout << "B = " << std::endl << B << std::endl;
  std::cout << "C = A*B = " << std::endl << C << std::endl;
  std::cout << "D = transpose(A) = " << std::endl << D << std::endl;
  std::cout << "det = determinant(A) = " << det << std::endl << std::endl;
  std::cout << "E = inverse(A) = " << std::endl << E << std::endl;
  std::cout << "F = A*E = " << std::endl << F << std::endl;

  return 0;
}
