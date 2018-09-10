class befubo_ShowStolenValue_Dialog
{
	idd = 9999;
	movingEnabled = false;
	
	class controls
	{
		class befubo_rscPicture: RscPicture
		{
			idc = 1200;
			text = "#(argb,8,8,3)color(0.5,0.5,0.5,0.8)";
			x = 0.31434 * safezoneW + safezoneX;
			y = 0.269085 * safezoneH + safezoneY;
			w = 0.165031 * safezoneW;
			h = 0.329878 * safezoneH;
		};
		class befubo_rscStolenValueText: RscStructuredText
		{
			idc = 1100;
			x = 0.324655 * safezoneW + safezoneX;
			y = 0.291077 * safezoneH + safezoneY;
			w = 0.0825155 * safezoneW;
			h = 0.0439838 * safezoneH;
			colorText[] = {1,1,1,1};
			colorBackground[] = {-1,-1,-1,0};
		};
		class befubo_rscStolenValue: RscStructuredText
		{
			idc = 1102;
			x = 0.417485 * safezoneW + safezoneX;
			y = 0.291077 * safezoneH + safezoneY;
			w = 0.0567294 * safezoneW;
			h = 0.0439838 * safezoneH;
			colorText[] = {1,1,1,1};
			colorBackground[] = {-1,-1,-1,0};
		};
		class befubo_rscStoredValueText: RscStructuredText
		{
			idc = 1101;
			x = 0.324655 * safezoneW + safezoneX;
			y = 0.357053 * safezoneH + safezoneY;
			w = 0.0825155 * safezoneW;
			h = 0.0439838 * safezoneH;
			colorText[] = {1,1,1,1};
			colorBackground[] = {-1,-1,-1,0};
		};
		class befubo_rscStoredValue: RscStructuredText
		{
			idc = 1103;
			x = 0.417485 * safezoneW + safezoneX;
			y = 0.357053 * safezoneH + safezoneY;
			w = 0.0567294 * safezoneW;
			h = 0.0439838 * safezoneH;
			colorText[] = {1,1,1,1};
			colorBackground[] = {-1,-1,-1,0};
		};
		class befubo_rscClose: RscButton
		{
			idc = 1600;
			text = "Schliessen"; //--- ToDo: Localize;
			x = 0.365913 * safezoneW + safezoneX;
			y = 0.521992 * safezoneH + safezoneY;
			w = 0.0618866 * safezoneW;
			h = 0.0549797 * safezoneH;
			action = "closeDialog 0";
		};
	};
};