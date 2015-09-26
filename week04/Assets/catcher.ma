//Maya ASCII 2016 scene
//Name: catcher.ma
//Last modified: Thu, Sep 24, 2015 04:17:04 PM
//Codeset: 1252
requires maya "2016";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2016";
fileInfo "version" "2016";
fileInfo "cutIdentifier" "201502261600-953408";
fileInfo "osv" "Microsoft Windows 8 Home Premium Edition, 64-bit  (Build 9200)\n";
fileInfo "license" "student";
createNode transform -s -n "persp";
	rename -uid "834E8799-408A-D1A1-6E3E-7D9FE41BECE6";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -5.0802998366273435 7.7450279785456324 30.345231940044535 ;
	setAttr ".r" -type "double3" 10.461647268589719 -1092.9999999999952 -6.1204056274639654e-016 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "44E4FBA4-45C1-440C-AEDD-CD9B961E10B6";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 27.543454009940092;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "8B1FAFFF-4B20-4912-0A24-7E98309A4554";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 100.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "E5469495-41A2-52E4-009A-D9BDA7980EF1";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	rename -uid "C2386F3B-43B4-88A4-CA1C-9B9D323A4A11";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 100.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "7353CF82-48D9-C35A-1CCA-1F8FA1FA025D";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	rename -uid "577FE694-43C9-9BBD-067B-4F847D2C1F21";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 100.1 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "FC8E9833-4FE9-4943-3203-7287FB14C6C3";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "pTorus1";
	rename -uid "23791C3E-4EEF-8D8A-D875-119367551425";
	setAttr ".t" -type "double3" 0.92255517436723267 12.129864966637545 1.223927352512991 ;
createNode mesh -n "pTorusShape1" -p "pTorus1";
	rename -uid "0AB1DD2E-4594-3513-7DFB-65A3E7ABC28E";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.65000006556510925 0.049999844282865524 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 98 ".pt";
	setAttr ".pt[0]" -type "float3" 0.035124555 -0.78099412 0.23879269 ;
	setAttr ".pt[1]" -type "float3" -1.0244548e-008 -1.5464666 0.36925551 ;
	setAttr ".pt[2]" -type "float3" 1.0244548e-008 -1.5464677 0.36925459 ;
	setAttr ".pt[3]" -type "float3" -0.035124741 -0.78099287 0.23879316 ;
	setAttr ".pt[4]" -type "float3" -0.073818304 -0.46022439 -0.056381997 ;
	setAttr ".pt[5]" -type "float3" -0.04633164 -1.1635962 -0.28565019 ;
	setAttr ".pt[6]" -type "float3" -0.016706727 -1.4350603 -0.45627028 ;
	setAttr ".pt[7]" -type "float3" 0.016706698 -1.4350603 -0.45627028 ;
	setAttr ".pt[8]" -type "float3" 0.046331707 -1.1635962 -0.28564996 ;
	setAttr ".pt[9]" -type "float3" 0.073818304 -0.46022454 -0.056382921 ;
	setAttr ".pt[10]" -type "float3" 0.00092269736 -4.0793023 2.7970653 ;
	setAttr ".pt[11]" -type "float3" 0 -4.5263839 2.528909 ;
	setAttr ".pt[12]" -type "float3" 0 -4.5263839 2.5289097 ;
	setAttr ".pt[13]" -type "float3" -0.00092269736 -4.0793023 2.7970653 ;
	setAttr ".pt[14]" -type "float3" -0.014254998 -3.7605073 2.4931686 ;
	setAttr ".pt[15]" -type "float3" -0.016420286 -3.5719476 1.8284712 ;
	setAttr ".pt[16]" -type "float3" -0.0063964184 -3.3913155 1.372038 ;
	setAttr ".pt[17]" -type "float3" 0.0063964413 -3.3913155 1.372038 ;
	setAttr ".pt[18]" -type "float3" 0.016420282 -3.5719476 1.8284712 ;
	setAttr ".pt[19]" -type "float3" 0.014255008 -3.7605073 2.4931686 ;
	setAttr ".pt[20]" -type "float3" 0 -5.5527177 2.6966653 ;
	setAttr ".pt[21]" -type "float3" 0 -5.7934003 2.2186487 ;
	setAttr ".pt[22]" -type "float3" 0 -5.7934012 2.2186496 ;
	setAttr ".pt[23]" -type "float3" 0 -5.5527177 2.6966655 ;
	setAttr ".pt[24]" -type "float3" -0.015724001 -5.2466412 2.3875535 ;
	setAttr ".pt[25]" -type "float3" -0.012392891 -5.3123808 1.4089233 ;
	setAttr ".pt[26]" -type "float3" -0.0031336693 -5.2348781 0.83161473 ;
	setAttr ".pt[27]" -type "float3" 0.0031336586 -5.2348781 0.83161527 ;
	setAttr ".pt[28]" -type "float3" 0.012393027 -5.3123798 1.4089237 ;
	setAttr ".pt[29]" -type "float3" 0.015724126 -5.2466412 2.3875532 ;
	setAttr ".pt[30]" -type "float3" 0 -5.3782997 1.8399458 ;
	setAttr ".pt[31]" -type "float3" 0 -5.2554812 1.114714 ;
	setAttr ".pt[32]" -type "float3" 0 -5.2554822 1.114715 ;
	setAttr ".pt[33]" -type "float3" 0 -5.3782997 1.8399466 ;
	setAttr ".pt[34]" -type "float3" -0.0038823362 -4.9670281 1.1350729 ;
	setAttr ".pt[35]" -type "float3" -0.028852968 -4.6263714 0.5568586 ;
	setAttr ".pt[36]" -type "float3" -0.016420271 -5.0645432 0.15881917 ;
	setAttr ".pt[37]" -type "float3" 0.016420253 -5.0645432 0.15881924 ;
	setAttr ".pt[38]" -type "float3" 0.028852869 -4.6263709 0.55685931 ;
	setAttr ".pt[39]" -type "float3" 0.0038823376 -4.9670272 1.1350725 ;
	setAttr ".pt[40]" -type "float3" 0 -1.1322896 0 ;
	setAttr ".pt[41]" -type "float3" 0 -1.6774114 0 ;
	setAttr ".pt[42]" -type "float3" 0 -1.6774112 0 ;
	setAttr ".pt[43]" -type "float3" 0 -1.1322896 0 ;
	setAttr ".pt[44]" -type "float3" 0 -0.62871265 0.071798518 ;
	setAttr ".pt[45]" -type "float3" -0.011073665 -1.9136029 0.083790727 ;
	setAttr ".pt[46]" -type "float3" -0.045102119 -3.7433944 -0.18208075 ;
	setAttr ".pt[47]" -type "float3" 0.045102142 -3.7433951 -0.18208042 ;
	setAttr ".pt[48]" -type "float3" 0.011073653 -1.9136029 0.083791047 ;
	setAttr ".pt[49]" -type "float3" 0 -0.62871265 0.071798526 ;
	setAttr ".pt[50]" -type "float3" 0 -0.39990401 0 ;
	setAttr ".pt[51]" -type "float3" 0 -0.82090896 0 ;
	setAttr ".pt[52]" -type "float3" 0 -0.82090896 0 ;
	setAttr ".pt[53]" -type "float3" 0 -0.39990401 0 ;
	setAttr ".pt[54]" -type "float3" 0 -0.0185051 0.0082037682 ;
	setAttr ".pt[55]" -type "float3" -0.018310038 -1.217912 0.0090352017 ;
	setAttr ".pt[56]" -type "float3" -0.075850487 -2.8572896 -0.37550887 ;
	setAttr ".pt[57]" -type "float3" 0.075850256 -2.8572896 -0.37550819 ;
	setAttr ".pt[58]" -type "float3" 0.018310038 -1.217911 0.0090354746 ;
	setAttr ".pt[59]" -type "float3" 0 -0.0185051 0.0082037691 ;
	setAttr ".pt[60]" -type "float3" 0 -0.0065115672 0 ;
	setAttr ".pt[61]" -type "float3" 0 -0.065759391 0 ;
	setAttr ".pt[62]" -type "float3" 0 -0.065759562 0 ;
	setAttr ".pt[63]" -type "float3" 0 -0.0065115672 0 ;
	setAttr ".pt[64]" -type "float3" 0 -0.016331648 0.033210512 ;
	setAttr ".pt[65]" -type "float3" -0.10976432 0.42609608 0.30726349 ;
	setAttr ".pt[66]" -type "float3" -0.14223146 0.83187103 -0.4056381 ;
	setAttr ".pt[67]" -type "float3" 0.14223121 0.83187127 -0.40563816 ;
	setAttr ".pt[68]" -type "float3" 0.10976444 0.42609519 0.30726349 ;
	setAttr ".pt[69]" -type "float3" 0 -0.016331648 0.033210922 ;
	setAttr ".pt[75]" -type "float3" -0.066223249 -0.44617841 0 ;
	setAttr ".pt[76]" -type "float3" -0.12246788 -0.45082885 0 ;
	setAttr ".pt[77]" -type "float3" 0.12246735 -0.45083135 0 ;
	setAttr ".pt[78]" -type "float3" 0.066223681 -0.44617784 0 ;
	setAttr ".pt[85]" -type "float3" -0.011670754 -0.40001902 0 ;
	setAttr ".pt[86]" -type "float3" -0.013574248 -0.69535774 0 ;
	setAttr ".pt[87]" -type "float3" 0.01357438 -0.69535774 0 ;
	setAttr ".pt[88]" -type "float3" 0.011670802 -0.40001991 0 ;
	setAttr ".pt[95]" -type "float3" -0.0014821289 -0.032451145 0 ;
	setAttr ".pt[96]" -type "float3" -0.0018074088 -0.043459486 0 ;
	setAttr ".pt[97]" -type "float3" 0.0018074088 -0.043459725 0 ;
	setAttr ".pt[98]" -type "float3" 0.0014821435 -0.032452185 0 ;
	setAttr ".pt[100]" -type "float3" 0.18010238 0.65871906 0 ;
	setAttr ".pt[101]" -type "float3" 0.032903265 0.62601161 -0.031949565 ;
	setAttr ".pt[102]" -type "float3" -0.032903653 0.62601173 -0.031949561 ;
	setAttr ".pt[103]" -type "float3" -0.18010238 0.65871984 0 ;
	setAttr ".pt[104]" -type "float3" -0.18010119 2.6375661 0.15464741 ;
	setAttr ".pt[105]" -type "float3" -0.092640854 0.33799982 -0.56660652 ;
	setAttr ".pt[106]" -type "float3" -0.052520946 0.24433395 -0.98180372 ;
	setAttr ".pt[107]" -type "float3" 0.052520972 0.24433488 -0.98180324 ;
	setAttr ".pt[108]" -type "float3" 0.092640854 0.33799994 -0.56660652 ;
	setAttr ".pt[109]" -type "float3" 0.18010142 2.6375654 0.15464747 ;
	setAttr ".pt[110]" -type "float3" -0.15333551 0.67325211 0.096130259 ;
	setAttr ".pt[111]" -type "float3" -0.099121787 0.4277212 -0.70595098 ;
	setAttr ".pt[112]" -type "float3" 0.099121787 0.42772046 -0.70595163 ;
	setAttr ".pt[113]" -type "float3" 0.15333584 0.67325354 0.096130595 ;
	setAttr ".pt[114]" -type "float3" 0.11286641 0.49523503 -4.3655746e-010 ;
	setAttr ".pt[115]" -type "float3" -0.1128663 0.49523705 2.0372681e-010 ;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "6406ECA3-4230-A9AD-2206-77A573B1E200";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode displayLayerManager -n "layerManager";
	rename -uid "417AB345-4E33-E1E1-C029-5BA3D2EEFDA2";
createNode displayLayer -n "defaultLayer";
	rename -uid "61061F61-43C2-8E7B-B60C-44BF640A1087";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "FA1BF411-41AF-00BB-330C-089BD3ACB044";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "76EA0C9E-481D-C0EE-C61A-ADB66E39F3AA";
	setAttr ".g" yes;
createNode polyTorus -n "polyTorus1";
	rename -uid "6F6AE68B-4764-57AB-BEDD-44AD1F0E5950";
	setAttr ".r" 4.7154117723748303;
	setAttr ".sr" 3.5390588060003862;
	setAttr ".sa" 10;
createNode deleteComponent -n "deleteComponent1";
	rename -uid "450AD1BE-496C-6AEF-B861-D985195F1585";
	setAttr ".dc" -type "componentList" 1 "f[130:159]";
createNode deleteComponent -n "deleteComponent2";
	rename -uid "36F6C7BC-4788-A535-AFDB-42A93C810CD6";
	setAttr ".dc" -type "componentList" 1 "f[100:129]";
createNode polyTweak -n "polyTweak1";
	rename -uid "D7BFEE0F-46DA-CC83-CB20-3BAE515706A9";
	setAttr ".uopa" yes;
	setAttr -s 60 ".tk[50:109]" -type "float3"  0 -0.20338869 0 0 -0.20338869
		 0 0 -0.20338869 0 0 -0.20338869 0 0 -0.20338869 0 0 -0.20338869 0 0 -0.20338869 0
		 0 -0.20338869 0 0 -0.20338869 0 0 -0.20338869 0 0 -0.79864872 0 0 -0.79864872 0 0
		 -0.79864872 0 0 -0.79864872 0 0 -0.79864872 0 0 -0.79864872 0 0 -0.79864872 0 0 -0.79864872
		 0 0 -0.79864872 0 0 -0.79864872 0 0 -1.3842783 0 0 -1.3842783 0 0 -1.3842783 0 0
		 -1.3842783 0 0 -1.3842783 0 0 -1.3842783 0 0 -1.3842783 0 0 -1.3842783 0 0 -1.3842783
		 0 0 -1.3842783 0 0 -1.35519588 0 0 -1.35519588 0 0 -1.35519588 0 0 -1.35519588 0
		 0 -1.35519588 0 0 -1.35519588 0 0 -1.35519588 0 0 -1.35519588 0 0 -1.35519588 0 0
		 -1.35519588 0 0 -0.54680932 0 0 -0.54680932 0 0 -0.54680932 0 0 -0.54680932 0 0 -0.54680932
		 0 0 -0.54680932 0 0 -0.54680932 0 0 -0.54680932 0 0 -0.54680932 0 0 -0.54680932 0
		 0 0.54680932 0 0 0.54680932 0 0 0.54680932 0 0 0.54680932 0 0 0.54680932 0 0 0.54680932
		 0 0 0.54680932 0 0 0.54680932 0 0 0.54680932 0 0 0.54680932 0;
createNode deleteComponent -n "deleteComponent3";
	rename -uid "97B9FE10-4F8F-C5D5-F23B-2E888EB306CB";
	setAttr ".dc" -type "componentList" 1 "f[90:99]";
createNode polyTweak -n "polyTweak2";
	rename -uid "7D6CE964-499B-5B48-CE9B-0D9673670603";
	setAttr ".uopa" yes;
	setAttr -s 110 ".tk";
	setAttr ".tk[0]" -type "float3" 0 -1.6597871 0 ;
	setAttr ".tk[1]" -type "float3" 0 -1.6597871 0 ;
	setAttr ".tk[2]" -type "float3" 0 -1.6597871 0 ;
	setAttr ".tk[3]" -type "float3" 0 -1.6597871 0 ;
	setAttr ".tk[4]" -type "float3" 0 -1.6597871 0 ;
	setAttr ".tk[5]" -type "float3" 0 -1.6597871 0 ;
	setAttr ".tk[6]" -type "float3" 0 -1.6597871 0 ;
	setAttr ".tk[7]" -type "float3" 0 -1.6597871 0 ;
	setAttr ".tk[8]" -type "float3" 0 -1.6597871 0 ;
	setAttr ".tk[9]" -type "float3" 0 -1.6597871 0 ;
	setAttr ".tk[10]" -type "float3" 0 -0.39822239 0 ;
	setAttr ".tk[11]" -type "float3" 0 -0.39822239 0 ;
	setAttr ".tk[12]" -type "float3" 0 -0.39822239 0 ;
	setAttr ".tk[13]" -type "float3" 0 -0.39822239 0 ;
	setAttr ".tk[14]" -type "float3" 0 -0.39822239 0 ;
	setAttr ".tk[15]" -type "float3" 0 -0.39822239 0 ;
	setAttr ".tk[16]" -type "float3" 0 -0.39822239 0 ;
	setAttr ".tk[17]" -type "float3" 0 -0.39822239 0 ;
	setAttr ".tk[18]" -type "float3" 0 -0.39822239 0 ;
	setAttr ".tk[19]" -type "float3" 0 -0.39822239 0 ;
	setAttr ".tk[50]" -type "float3" 0 -0.36013603 0 ;
	setAttr ".tk[51]" -type "float3" 0 -0.36013603 0 ;
	setAttr ".tk[52]" -type "float3" 0 -0.36013603 0 ;
	setAttr ".tk[53]" -type "float3" 0 -0.36013603 0 ;
	setAttr ".tk[54]" -type "float3" 0 -0.36013603 0 ;
	setAttr ".tk[55]" -type "float3" 0 -0.36013603 0 ;
	setAttr ".tk[56]" -type "float3" 0 -0.36013603 0 ;
	setAttr ".tk[57]" -type "float3" 0 -0.36013603 0 ;
	setAttr ".tk[58]" -type "float3" 0 -0.36013603 0 ;
	setAttr ".tk[59]" -type "float3" 0 -0.36013603 0 ;
	setAttr ".tk[60]" -type "float3" 0 -4.2253475 0 ;
	setAttr ".tk[61]" -type "float3" 0 -4.2253475 0 ;
	setAttr ".tk[62]" -type "float3" 0 -4.2253475 0 ;
	setAttr ".tk[63]" -type "float3" 0 -4.2253475 0 ;
	setAttr ".tk[64]" -type "float3" 0 -4.2253475 0 ;
	setAttr ".tk[65]" -type "float3" 0 -4.2253475 0 ;
	setAttr ".tk[66]" -type "float3" 0 -4.2253475 0 ;
	setAttr ".tk[67]" -type "float3" 0 -4.2253475 0 ;
	setAttr ".tk[68]" -type "float3" 0 -4.2253475 0 ;
	setAttr ".tk[69]" -type "float3" 0 -4.2253475 0 ;
	setAttr ".tk[70]" -type "float3" 0 -7.8129239 2.0954758e-009 ;
	setAttr ".tk[71]" -type "float3" 0 -7.8129239 2.0954758e-009 ;
	setAttr ".tk[72]" -type "float3" 0 -7.8129239 2.0954758e-009 ;
	setAttr ".tk[73]" -type "float3" 0 -7.8129239 0 ;
	setAttr ".tk[74]" -type "float3" 0 -7.8129239 0 ;
	setAttr ".tk[75]" -type "float3" 0 -7.8129239 0 ;
	setAttr ".tk[76]" -type "float3" 0 -7.8129239 0 ;
	setAttr ".tk[77]" -type "float3" 0 -7.8129239 0 ;
	setAttr ".tk[78]" -type "float3" 0 -7.8129239 0 ;
	setAttr ".tk[79]" -type "float3" 0 -7.8129239 0 ;
	setAttr ".tk[80]" -type "float3" 0 -9.0780563 1.3271347e-008 ;
	setAttr ".tk[81]" -type "float3" 0 -9.0780563 1.3271347e-008 ;
	setAttr ".tk[82]" -type "float3" 0 -9.0780563 1.3271347e-008 ;
	setAttr ".tk[83]" -type "float3" 0 -9.0780563 0 ;
	setAttr ".tk[84]" -type "float3" 0 -9.0780563 0 ;
	setAttr ".tk[85]" -type "float3" 0 -9.0780563 0 ;
	setAttr ".tk[86]" -type "float3" 0 -9.0780563 0 ;
	setAttr ".tk[87]" -type "float3" 0 -9.0780563 0 ;
	setAttr ".tk[88]" -type "float3" 0 -9.0780563 0 ;
	setAttr ".tk[89]" -type "float3" 0 -9.0780563 0 ;
	setAttr ".tk[90]" -type "float3" 0 -9.3370924 -1.4551915e-009 ;
	setAttr ".tk[91]" -type "float3" 0 -9.3370924 -1.4551915e-009 ;
	setAttr ".tk[92]" -type "float3" 0 -9.3370924 -1.4551915e-009 ;
	setAttr ".tk[93]" -type "float3" 0 -9.3370924 0 ;
	setAttr ".tk[94]" -type "float3" 0 -9.3370924 0 ;
	setAttr ".tk[95]" -type "float3" 0 -9.3370924 0 ;
	setAttr ".tk[96]" -type "float3" 0 -9.3370924 0 ;
	setAttr ".tk[97]" -type "float3" 0 -9.3370924 0 ;
	setAttr ".tk[98]" -type "float3" 0 -9.3370924 0 ;
	setAttr ".tk[99]" -type "float3" 0 -9.3370924 0 ;
	setAttr ".tk[100]" -type "float3" 0 -5.858573 -1.3969839e-007 ;
	setAttr ".tk[101]" -type "float3" 0 -5.858573 -1.3969839e-007 ;
	setAttr ".tk[102]" -type "float3" 0 -5.858573 -1.3969839e-007 ;
	setAttr ".tk[103]" -type "float3" 0 -5.858573 8.0093741e-008 ;
	setAttr ".tk[104]" -type "float3" 0 -5.858573 -1.8626451e-009 ;
	setAttr ".tk[105]" -type "float3" 0 -5.858573 0 ;
	setAttr ".tk[106]" -type "float3" 0 -5.858573 0 ;
	setAttr ".tk[107]" -type "float3" 0 -5.858573 0 ;
	setAttr ".tk[108]" -type "float3" 0 -5.858573 -1.8626451e-009 ;
	setAttr ".tk[109]" -type "float3" 0 -5.858573 8.0093741e-008 ;
	setAttr ".tk[110]" -type "float3" 0 -5.858573 -1.3969839e-007 ;
	setAttr ".tk[111]" -type "float3" 0 -5.858573 -1.3969839e-007 ;
	setAttr ".tk[112]" -type "float3" 0 -5.858573 -1.3969839e-007 ;
	setAttr ".tk[113]" -type "float3" 0 -5.858573 -8.5681677e-008 ;
	setAttr ".tk[114]" -type "float3" 0 -5.858573 4.0978193e-008 ;
	setAttr ".tk[115]" -type "float3" 0 -5.858573 1.071021e-008 ;
	setAttr ".tk[116]" -type "float3" 0 -5.858573 0 ;
	setAttr ".tk[117]" -type "float3" 0 -5.858573 1.071021e-008 ;
	setAttr ".tk[118]" -type "float3" 0 -5.858573 4.0978193e-008 ;
	setAttr ".tk[119]" -type "float3" 0 -5.858573 -8.5681677e-008 ;
	setAttr ".tk[120]" -type "float3" 0 -5.1777949 -2.0489097e-008 ;
	setAttr ".tk[121]" -type "float3" 0 -5.1777949 -2.0489097e-008 ;
	setAttr ".tk[122]" -type "float3" 0 -5.1777949 -2.0489097e-008 ;
	setAttr ".tk[123]" -type "float3" 0 -5.1777949 -6.519258e-008 ;
	setAttr ".tk[124]" -type "float3" 0 -5.1777949 3.5390258e-008 ;
	setAttr ".tk[125]" -type "float3" 0 -5.1777949 2.7706847e-008 ;
	setAttr ".tk[126]" -type "float3" 0 -5.1777949 5.3551048e-009 ;
	setAttr ".tk[127]" -type "float3" 0 -5.1777949 2.7706847e-008 ;
	setAttr ".tk[128]" -type "float3" 0 -5.1777949 3.5390258e-008 ;
	setAttr ".tk[129]" -type "float3" 0 -5.1777949 -6.519258e-008 ;
	setAttr ".tk[130]" -type "float3" 0 -3.5011938 -7.7998266e-009 ;
	setAttr ".tk[131]" -type "float3" 0 -3.5011938 -7.7998266e-009 ;
	setAttr ".tk[132]" -type "float3" 0 -3.5011938 -7.7998266e-009 ;
	setAttr ".tk[133]" -type "float3" 0 -3.5011938 4.0745363e-010 ;
	setAttr ".tk[134]" -type "float3" 0 -3.5011938 6.2573235e-010 ;
	setAttr ".tk[135]" -type "float3" 0 -3.5011938 0 ;
	setAttr ".tk[136]" -type "float3" 0 -3.5011938 0 ;
	setAttr ".tk[137]" -type "float3" 0 -3.5011938 0 ;
	setAttr ".tk[138]" -type "float3" 0 -3.5011938 6.2573235e-010 ;
	setAttr ".tk[139]" -type "float3" 0 -3.5011938 4.0745363e-010 ;
createNode deleteComponent -n "deleteComponent4";
	rename -uid "2531EBCA-4BA9-858A-E191-7DB71A340355";
	setAttr ".dc" -type "componentList" 1 "f[65:67]";
createNode polyTweak -n "polyTweak3";
	rename -uid "DC337A55-415D-0192-2663-38BEDEA481BB";
	setAttr ".uopa" yes;
	setAttr -s 70 ".tk[70:139]" -type "float3"  0 0.3837927 0 0 0.3837927
		 0 0 0.3837927 0 0 0.3837927 0 0 0.3837927 0 0 0.3837927 0 0 0.3837927 0 0 0.3837927
		 0 0 0.3837927 0 0 0.3837927 0 0 0.68104422 0 0 0.68104422 0 0 0.68104422 0 0 0.68104422
		 0 0 0.68104422 0 0 0.68104422 0 0 0.68104422 0 0 0.68104422 0 0 0.68104422 0 0 0.68104422
		 0 0 0.20859125 0 0 0.20859125 0 0 0.20859125 0 0 0.20859125 0 0 0.20859125 0 0 0.20859125
		 0 0 0.20859125 0 0 0.20859125 0 0 0.20859125 0 0 0.20859125 0 0 7.90285063 0 0 7.90285063
		 0 0 7.90285063 0 0 7.90285063 0 0 7.90285063 0 0 7.90285063 0 0 7.90285063 0 0 7.90285063
		 0 0 7.90285063 0 0 7.90285063 0 0 7.90285063 0 0 7.90285063 0 0 7.90285063 0 0 7.90285063
		 0 0 7.90285063 0 0 7.90285063 0 0 7.90285063 0 0 7.90285063 0 0 7.90285063 0 0 7.90285063
		 0 0 5.94150162 0 0 5.94150162 0 0 5.94150162 0 0 5.94150162 0 0 5.94150162 0 0 5.94150162
		 0 0 5.94150162 0 0 5.94150162 0 0 5.94150162 0 0 5.94150162 0 0 0.35261324 0 0 0.35261324
		 0 0 0.35261324 0 0 0.35261324 0 0 0.35261324 0 0 0.35261324 0 0 0.35261324 0 0 0.35261324
		 0 0 0.35261324 0 0 0.35261324 0;
createNode deleteComponent -n "deleteComponent5";
	rename -uid "C5C767DC-4B38-4479-98A3-0B8EB86B216A";
	setAttr ".dc" -type "componentList" 1 "f[87:96]";
createNode deleteComponent -n "deleteComponent6";
	rename -uid "87B4F03A-4089-1B88-34E0-5DB82A94B6AB";
	setAttr ".dc" -type "componentList" 1 "f[87:96]";
createNode deleteComponent -n "deleteComponent7";
	rename -uid "A426FE79-4274-3721-B4A1-29866985DD90";
	setAttr ".dc" -type "componentList" 1 "f[87:96]";
createNode polyBridgeEdge -n "polyBridgeEdge1";
	rename -uid "419E2918-4C63-91DD-95F3-6DA38C1C8E4F";
	setAttr ".ics" -type "componentList" 4 "e[65:67]" "e[105:107]" "e[166:167]" "e[204:205]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.92255517436723267 12.129864966637545 1.223927352512991 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".sv1" 68;
	setAttr ".sv2" 105;
createNode polyTweak -n "polyTweak4";
	rename -uid "CDBEEBB6-4E7D-01A3-F738-CF9848E66B33";
	setAttr ".uopa" yes;
	setAttr -s 36 ".tk";
	setAttr ".tk[0]" -type "float3" 1.8044375e-009 0.69837141 1.1173464 ;
	setAttr ".tk[1]" -type "float3" 0 0.53381985 0.85407555 ;
	setAttr ".tk[2]" -type "float3" 0 0.53382039 0.85407609 ;
	setAttr ".tk[3]" -type "float3" -1.8044375e-009 0.69837141 1.1173464 ;
	setAttr ".tk[4]" -type "float3" -3.3760443e-008 0.94031739 1.5044441 ;
	setAttr ".tk[5]" -type "float3" -8.5216016e-008 1.1697299 1.8714883 ;
	setAttr ".tk[6]" -type "float3" -4.7963113e-008 1.2658029 2.0251985 ;
	setAttr ".tk[7]" -type "float3" 3.9581209e-008 1.2658029 2.0251989 ;
	setAttr ".tk[8]" -type "float3" 1.4016405e-007 1.1697299 1.8714882 ;
	setAttr ".tk[9]" -type "float3" 3.3760443e-008 0.94031739 1.5044441 ;
	setAttr ".tk[15]" -type "float3" 1.0477379e-009 0 -2.3283064e-009 ;
	setAttr ".tk[16]" -type "float3" 1.0011718e-008 0 -1.8626451e-009 ;
	setAttr ".tk[17]" -type "float3" -1.0011718e-008 0 -1.8626451e-009 ;
	setAttr ".tk[18]" -type "float3" -1.0477379e-009 0 -2.3283064e-009 ;
	setAttr ".tk[56]" -type "float3" -4.292815e-010 0 0 ;
	setAttr ".tk[57]" -type "float3" -9.6770236e-010 0 9.3132257e-010 ;
	setAttr ".tk[65]" -type "float3" 1.1408702e-008 0 -7.4505806e-009 ;
	setAttr ".tk[66]" -type "float3" 1.2014061e-007 0 3.5762787e-007 ;
	setAttr ".tk[67]" -type "float3" -9.033829e-008 0 3.5762787e-007 ;
	setAttr ".tk[68]" -type "float3" -1.1408702e-008 0 -2.9802322e-008 ;
	setAttr ".tk[76]" -type "float3" 2.3719622e-009 0 0 ;
	setAttr ".tk[77]" -type "float3" -2.3719622e-009 0 0 ;
	setAttr ".tk[100]" -type "float3" 1.0500662e-007 1.6046649 2.5673542 ;
	setAttr ".tk[101]" -type "float3" 3.3760443e-009 1.2836323 2.0537238 ;
	setAttr ".tk[102]" -type "float3" -1.6880222e-008 1.2836323 2.0537238 ;
	setAttr ".tk[103]" -type "float3" -1.0500662e-007 1.6046649 2.5673542 ;
	setAttr ".tk[104]" -type "float3" 3.7252903e-008 2.0676477 3.3080969 ;
	setAttr ".tk[105]" -type "float3" -3.1106174e-007 2.5002522 4.0002332 ;
	setAttr ".tk[106]" -type "float3" -3.4086406e-007 2.6800961 4.2879739 ;
	setAttr ".tk[107]" -type "float3" 3.4086406e-007 2.6800961 4.2879739 ;
	setAttr ".tk[108]" -type "float3" 3.1106174e-007 2.5002522 4.0002332 ;
	setAttr ".tk[109]" -type "float3" -3.7252903e-008 2.0676477 3.3080969 ;
createNode deleteComponent -n "deleteComponent8";
	rename -uid "F5ACE304-4882-D63A-BC43-F7B5AD9745AD";
	setAttr ".dc" -type "componentList" 0;
createNode polyBridgeEdge -n "polyBridgeEdge2";
	rename -uid "115F2C5D-4AB4-33FB-1E9D-A2BF006C3B87";
	setAttr ".ics" -type "componentList" 2 "e[76]" "e[101]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.92255517436723267 12.129864966637545 1.223927352512991 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".sv1" 76;
	setAttr ".sv2" 101;
createNode polyTweak -n "polyTweak5";
	rename -uid "F5C5A97C-470C-1333-CF91-D484DC677F86";
	setAttr ".uopa" yes;
	setAttr -s 48 ".tk";
	setAttr ".tk[0]" -type "float3" 0.75008166 -1.6370238 2.7349944 ;
	setAttr ".tk[1]" -type "float3" -0.056393392 -1.6409218 2.7487683 ;
	setAttr ".tk[2]" -type "float3" 0.056393094 -1.6409218 2.7487683 ;
	setAttr ".tk[3]" -type "float3" -0.75008172 -1.6370238 2.7349944 ;
	setAttr ".tk[4]" -type "float3" -0.81872874 -1.4422674 2.2061625 ;
	setAttr ".tk[5]" -type "float3" -0.32764131 -1.0735636 1.3276447 ;
	setAttr ".tk[6]" -type "float3" 0.019260371 -0.8127681 0.80324858 ;
	setAttr ".tk[7]" -type "float3" -0.019260349 -0.81276768 0.80324799 ;
	setAttr ".tk[8]" -type "float3" 0.32764125 -1.0735636 1.3276447 ;
	setAttr ".tk[9]" -type "float3" 0.81872851 -1.4422674 2.2061625 ;
	setAttr ".tk[10]" -type "float3" 0.019586662 -0.093103491 0.064794734 ;
	setAttr ".tk[11]" -type "float3" 5.5021512e-009 -0.054740939 0.020798106 ;
	setAttr ".tk[12]" -type "float3" -8.8034415e-009 -0.054740939 0.020798106 ;
	setAttr ".tk[13]" -type "float3" -0.019586679 -0.093103491 0.064794734 ;
	setAttr ".tk[14]" -type "float3" -0.062925555 -0.16581315 0.15062916 ;
	setAttr ".tk[15]" -type "float3" -0.076674759 -0.26388571 0.25364792 ;
	setAttr ".tk[16]" -type "float3" -8.813273e-008 -0.28017282 0.27456743 ;
	setAttr ".tk[17]" -type "float3" 8.813273e-008 -0.28017282 0.27456743 ;
	setAttr ".tk[18]" -type "float3" 0.076674722 -0.26388571 0.25364792 ;
	setAttr ".tk[19]" -type "float3" 0.062925555 -0.16581315 0.15062916 ;
	setAttr ".tk[25]" -type "float3" 0 -0.0033131838 0 ;
	setAttr ".tk[26]" -type "float3" 0 -0.011762059 0 ;
	setAttr ".tk[27]" -type "float3" 0 -0.011762059 0 ;
	setAttr ".tk[28]" -type "float3" 0 -0.0033131838 0 ;
	setAttr ".tk[65]" -type "float3" 0 -0.16984001 0 ;
	setAttr ".tk[66]" -type "float3" -0.22506562 -0.40335464 0 ;
	setAttr ".tk[67]" -type "float3" 0.22506511 -0.40335432 0 ;
	setAttr ".tk[68]" -type "float3" 0 -0.16984001 0 ;
	setAttr ".tk[76]" -type "float3" -2.1302755 0 0 ;
	setAttr ".tk[77]" -type "float3" 2.1302779 0 0 ;
	setAttr ".tk[86]" -type "float3" -1.1541979 0 0 ;
	setAttr ".tk[87]" -type "float3" 1.1541977 0 0 ;
	setAttr ".tk[96]" -type "float3" -0.39569402 0 0 ;
	setAttr ".tk[97]" -type "float3" 0.395693 0 0 ;
	setAttr ".tk[100]" -type "float3" 3.4405553 -2.5771008 4.2801671 ;
	setAttr ".tk[101]" -type "float3" 0.59732926 -2.8957748 5.0164485 ;
	setAttr ".tk[102]" -type "float3" -0.5973314 -2.8957748 5.0164485 ;
	setAttr ".tk[103]" -type "float3" -3.4405544 -2.5771008 4.2801671 ;
	setAttr ".tk[104]" -type "float3" -2.1408026 -1.5965996 2.0147784 ;
	setAttr ".tk[105]" -type "float3" -0.36931148 -0.66397196 0.2345963 ;
	setAttr ".tk[106]" -type "float3" -0.06369327 -0.35695395 0 ;
	setAttr ".tk[107]" -type "float3" 0.063693278 -0.35695395 0 ;
	setAttr ".tk[108]" -type "float3" 0.36931115 -0.66397202 0.23459655 ;
	setAttr ".tk[109]" -type "float3" 2.1408021 -1.5965989 2.0147772 ;
	setAttr ".tk[110]" -type "float3" -0.23053931 -0.59082276 0.17284571 ;
	setAttr ".tk[111]" -type "float3" -0.17853342 -0.4025307 0 ;
	setAttr ".tk[112]" -type "float3" 0.17853343 -0.40253115 0 ;
	setAttr ".tk[113]" -type "float3" 0.23053984 -0.59082371 0.1728463 ;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "8E4FDAF0-4204-C089-D7E6-1CAA24EF0C75";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"top\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n"
		+ "                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n"
		+ "                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n"
		+ "                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 922\n                -height 349\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n"
		+ "            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n"
		+ "            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 922\n            -height 349\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"side\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n"
		+ "                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n"
		+ "                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n"
		+ "                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 922\n                -height 348\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n"
		+ "            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n"
		+ "            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n"
		+ "            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 922\n            -height 348\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n"
		+ "                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n"
		+ "                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n"
		+ "                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 922\n                -height 348\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n"
		+ "            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n"
		+ "            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n"
		+ "            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 922\n            -height 348\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 1\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n"
		+ "                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n"
		+ "                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n"
		+ "                -width 1475\n                -height 764\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 1\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n"
		+ "            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n"
		+ "            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1475\n            -height 764\n"
		+ "            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -showShapes 0\n                -showReferenceNodes 1\n                -showReferenceMembers 1\n                -showAttributes 0\n                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n                -showContainerContents 1\n"
		+ "                -ignoreDagHierarchy 0\n                -expandConnections 0\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n"
		+ "                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 0\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n"
		+ "            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n"
		+ "            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"graphEditor\" -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n"
		+ "                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n"
		+ "                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n"
		+ "                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n"
		+ "                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n"
		+ "                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n"
		+ "                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dopeSheetPanel\" -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n"
		+ "                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n"
		+ "                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n"
		+ "                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n"
		+ "                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n"
		+ "                -ignoreOutlinerColor 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"clipEditorPanel\" -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"sequenceEditorPanel\" -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n"
		+ "                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n"
		+ "                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n"
		+ "                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperShadePanel\" -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"visorPanel\" -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n"
		+ "                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n"
		+ "                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"createNodePanel\" -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"polyTexturePlacementPanel\" -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"renderWindowPanel\" -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"Blend Shape\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tblendShapePanel -unParent -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynRelEdPanel\" -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"relationshipPanel\" -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"referenceEditorPanel\" -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"componentEditorPanel\" -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynPaintScriptedPanelType\" -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"scriptEditorPanel\" -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"profilerPanel\" -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 1\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1475\\n    -height 764\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 1\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1475\\n    -height 764\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "1641D4FC-49C9-8655-2F6F-7E94ECAE7A5E";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -s 2 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 4 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :ikSystem;
	setAttr -s 4 ".sol";
connectAttr "polyBridgeEdge2.out" "pTorusShape1.i";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "polyTorus1.out" "deleteComponent1.ig";
connectAttr "deleteComponent1.og" "deleteComponent2.ig";
connectAttr "deleteComponent2.og" "polyTweak1.ip";
connectAttr "polyTweak1.out" "deleteComponent3.ig";
connectAttr "deleteComponent3.og" "polyTweak2.ip";
connectAttr "polyTweak2.out" "deleteComponent4.ig";
connectAttr "deleteComponent4.og" "polyTweak3.ip";
connectAttr "polyTweak3.out" "deleteComponent5.ig";
connectAttr "deleteComponent5.og" "deleteComponent6.ig";
connectAttr "deleteComponent6.og" "deleteComponent7.ig";
connectAttr "polyTweak4.out" "polyBridgeEdge1.ip";
connectAttr "pTorusShape1.wm" "polyBridgeEdge1.mp";
connectAttr "deleteComponent7.og" "polyTweak4.ip";
connectAttr "polyBridgeEdge1.out" "deleteComponent8.ig";
connectAttr "polyTweak5.out" "polyBridgeEdge2.ip";
connectAttr "pTorusShape1.wm" "polyBridgeEdge2.mp";
connectAttr "deleteComponent8.og" "polyTweak5.ip";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "pTorusShape1.iog" ":initialShadingGroup.dsm" -na;
// End of catcher.ma
