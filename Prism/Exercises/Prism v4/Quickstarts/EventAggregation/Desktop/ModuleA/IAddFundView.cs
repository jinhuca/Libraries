using System;

namespace ModuleA
{
	public interface IAddFundView
	{
		event EventHandler AddFund;
		string Customer { get; }
		string Fund { get; }
	}
}
