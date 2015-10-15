//Maya ASCII 2016 scene
//Name: tub.ma
//Last modified: Thu, Oct 15, 2015 07:00:10 PM
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
	rename -uid "F097EF03-4A8B-7BA4-D2D3-6693D6EEB1BD";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 3.050686177465483 16.716758915738637 -16.955000931390899 ;
	setAttr ".r" -type "double3" -44.138352731351198 1609.7999999997328 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "82F2FF8F-4253-A10D-7693-5E98BE85F40C";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 24.004765597390715;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "F674C88C-4A29-006C-CD1C-6FA81A61BE7B";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 100.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "7529BF3F-44F7-0418-E065-62A9FDA59EB2";
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
	rename -uid "08A5B0F8-491D-CFF8-B5B2-409CE42788A0";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 100.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "8DBA09BF-4BB6-08FA-5061-4CA3E4BE542B";
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
	rename -uid "6EC76B8B-4AFB-082A-450C-178EC1DBC42C";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 100.1 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "669CE274-4EDB-D42D-C674-7FBAA854EB37";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "pCube1";
	rename -uid "7F13F32F-44AF-D7F8-736F-2DB45FE87E93";
	setAttr ".t" -type "double3" 0 0.5 0 ;
createNode transform -n "transform5" -p "pCube1";
	rename -uid "63807F9F-42E7-3DDE-07CE-62A4B116DF20";
	setAttr ".v" no;
createNode mesh -n "pCubeShape1" -p "transform5";
	rename -uid "34CA7B80-4374-97FD-D3DA-8FB89CB6D4CC";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pCube2";
	rename -uid "49230150-421B-AC5A-2692-63A535168FA8";
	setAttr ".t" -type "double3" 3 3 0 ;
createNode transform -n "transform4" -p "pCube2";
	rename -uid "B7828A8D-4F1A-6CC5-B4F4-5FBD8DE90839";
	setAttr ".v" no;
createNode mesh -n "pCubeShape2" -p "transform4";
	rename -uid "E5F20E69-444C-B3BF-69E0-5BA83E2C195C";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "group";
	rename -uid "3F2E7BD5-408C-FCB2-5C30-968C1B942E9A";
	setAttr ".t" -type "double3" -6 0 0 ;
	setAttr ".rp" -type "double3" 3 3 0 ;
	setAttr ".sp" -type "double3" 3 3 0 ;
createNode transform -n "pasted__pCube2" -p "group";
	rename -uid "9EE8B0FD-4F60-2B81-8A59-4EAA042B404B";
	setAttr ".t" -type "double3" 3 3 0 ;
createNode transform -n "transform3" -p "|group|pasted__pCube2";
	rename -uid "14A6877B-4251-CE24-455E-CA82AF845D08";
	setAttr ".v" no;
createNode mesh -n "pasted__pCubeShape2" -p "transform3";
	rename -uid "2975C6DB-4864-9FCD-CED5-9B9F186C8C37";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pCube3";
	rename -uid "D7C80408-46D7-B6A7-31F2-4CA5E85D2CD4";
	setAttr ".t" -type "double3" 0 3 -6.5076664289050354 ;
createNode transform -n "transform2" -p "pCube3";
	rename -uid "BF7A98EA-4959-6071-48F4-4180AD2A45BC";
	setAttr ".v" no;
createNode mesh -n "pCubeShape3" -p "transform2";
	rename -uid "53FFD6AD-4EDD-DF2C-4741-0FAA5DD286CA";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "group1";
	rename -uid "07E5B4BB-47B0-DC7C-05A4-EAB80D1DBC34";
	setAttr ".rp" -type "double3" 0 3 6 ;
	setAttr ".sp" -type "double3" 0 3 6 ;
createNode transform -n "pasted__pCube3" -p "group1";
	rename -uid "3D564273-46FD-C34D-31A9-A6A28879421F";
	setAttr ".t" -type "double3" 0 3 6.4924173987771638 ;
createNode transform -n "transform1" -p "|group1|pasted__pCube3";
	rename -uid "1598CC8E-488B-06CD-509E-E0826D6002AD";
	setAttr ".v" no;
createNode mesh -n "pasted__pCubeShape3" -p "transform1";
	rename -uid "AF717A9B-41F2-F1E6-A33E-F28B2C4DE694";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pCube4";
	rename -uid "09B4F2BB-452B-CF3A-10EF-FCB70C3CA002";
createNode transform -n "polySurface3" -p "pCube4";
	rename -uid "DEC999E8-4413-0F96-E03C-2A8E73774216";
	setAttr ".t" -type "double3" -1 0 0.022808293789312373 ;
	setAttr ".s" -type "double3" 1.6524882641063217 1.297159368717423 0.9724711476634984 ;
	setAttr ".rp" -type "double3" -3 3 0 ;
	setAttr ".sp" -type "double3" -3 3 0 ;
createNode mesh -n "polySurfaceShape3" -p "polySurface3";
	rename -uid "F0D10227-449C-D11F-5AFD-ABB3CCB439E2";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface5" -p "pCube4";
	rename -uid "B9BABFAD-41B8-A434-EDB0-B3A77DDBA8FA";
	setAttr ".t" -type "double3" 6.9108607622038072 0 -12.492417335510254 ;
	setAttr ".s" -type "double3" 4.0261049776377291 1.2987105168561961 1.618499129782387 ;
	setAttr ".rp" -type "double3" 0 3 6.4924173355102539 ;
	setAttr ".sp" -type "double3" 0 3 6.4924173355102539 ;
createNode mesh -n "polySurfaceShape5" -p "polySurface5";
	rename -uid "1FFF8F02-4DF3-E655-65A5-DFB7C6F21C12";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "transform6" -p "pCube4";
	rename -uid "4918E211-428F-C3BD-BE10-9AAD8FCCEF75";
	setAttr ".v" no;
createNode mesh -n "pCube4Shape" -p "transform6";
	rename -uid "1FF98340-40F4-DCE5-54B8-E08CB5618994";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "group2";
	rename -uid "151FA4C3-43CE-6A33-0365-8883353A40A4";
	setAttr ".rp" -type "double3" 0 2.75 0.30151082028162746 ;
	setAttr ".sp" -type "double3" 0 2.75 0.30151082028162746 ;
createNode transform -n "pasted__pCube1" -p "group2";
	rename -uid "3FAEC669-4C8F-1874-8209-D48464005669";
	setAttr ".t" -type "double3" 0 0.5 0 ;
createNode transform -n "pasted__transform5" -p "|group2|pasted__pCube1";
	rename -uid "3A2554A8-473A-C629-631C-38AC9F3FDC7C";
	setAttr ".v" no;
createNode mesh -n "pasted__pCubeShape1" -p "|group2|pasted__pCube1|pasted__transform5";
	rename -uid "627370FE-4D5B-F1FF-331F-6B880753809A";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pasted__pCube2" -p "group2";
	rename -uid "C5B70712-42BF-A437-8721-79B048E83B92";
	setAttr ".t" -type "double3" 3 3 0 ;
createNode transform -n "pasted__transform4" -p "|group2|pasted__pCube2";
	rename -uid "8B0078BA-4E1F-70EE-AED8-C6A629A9CAFE";
	setAttr ".v" no;
createNode mesh -n "pasted__pCubeShape2" -p "|group2|pasted__pCube2|pasted__transform4";
	rename -uid "2C9ED1B6-4B0F-8510-B3F7-0786C2F147C9";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pasted__group" -p "group2";
	rename -uid "733C7F5A-478D-09E4-E781-2E97D7430922";
	setAttr ".t" -type "double3" -6 0 0 ;
	setAttr ".rp" -type "double3" 3 3 0 ;
	setAttr ".sp" -type "double3" 3 3 0 ;
createNode transform -n "pasted__pasted__pCube2" -p "|group2|pasted__group";
	rename -uid "E61BE71C-4FD4-17AE-673A-C096ADB51810";
	setAttr ".t" -type "double3" 3 3 0 ;
createNode transform -n "pasted__transform3" -p "|group2|pasted__group|pasted__pasted__pCube2";
	rename -uid "733C71F0-4840-DD93-B92C-A0A6DA17D946";
	setAttr ".v" no;
createNode mesh -n "pasted__pasted__pCubeShape2" -p "|group2|pasted__group|pasted__pasted__pCube2|pasted__transform3";
	rename -uid "8FA304A0-4A94-AD7C-E0FD-1BA6A62E68FD";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pasted__pCube3" -p "group2";
	rename -uid "E5D64F85-4871-A12A-A744-49B683CDEE9E";
	setAttr ".t" -type "double3" 0 3 -6.5076664289050354 ;
createNode transform -n "pasted__transform2" -p "|group2|pasted__pCube3";
	rename -uid "1FAF1B21-44E5-20D4-A708-5380EE49A2BD";
	setAttr ".v" no;
createNode mesh -n "pasted__pCubeShape3" -p "|group2|pasted__pCube3|pasted__transform2";
	rename -uid "9CC8DF4E-43E3-1276-8BCC-F9BA969CDD56";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pasted__group1" -p "group2";
	rename -uid "29FE475A-416F-0778-23F1-AFAE253D561C";
	setAttr ".rp" -type "double3" 0 3 6 ;
	setAttr ".sp" -type "double3" 0 3 6 ;
createNode transform -n "pasted__pasted__pCube3" -p "|group2|pasted__group1";
	rename -uid "18473C2B-4D80-9B8F-20F8-1BAF9991C5AD";
	setAttr ".t" -type "double3" 0 3 6.4924173987771638 ;
createNode transform -n "pasted__transform1" -p "|group2|pasted__group1|pasted__pasted__pCube3";
	rename -uid "C66C14C0-4033-C660-214B-38B449E9E558";
	setAttr ".v" no;
createNode mesh -n "pasted__pasted__pCubeShape3" -p "|group2|pasted__group1|pasted__pasted__pCube3|pasted__transform1";
	rename -uid "E56E98FE-4A76-E17F-4F1F-2F9C94C7C483";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pasted__pCube4" -p "group2";
	rename -uid "87EDB163-46CE-69BE-EFF0-B2871A04E41A";
createNode transform -n "pasted__transform6" -p "|group2|pasted__pCube4";
	rename -uid "B28800AB-4762-6483-B8CE-06B7599ABB2D";
	setAttr ".v" no;
createNode mesh -n "pasted__pCube4Shape" -p "|group2|pasted__pCube4|pasted__transform6";
	rename -uid "A1F8F8DC-4654-88C0-D7DF-A2B9E66F8CA2";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "group3";
	rename -uid "502DE2F7-4758-74DA-82C5-00863DCB7EE6";
	setAttr ".t" -type "double3" 0 0 5.1377632486079312 ;
	setAttr ".rp" -type "double3" 0 2.9999999999999996 -0.6584160830570136 ;
	setAttr ".sp" -type "double3" 0 2.9999999999999996 -0.6584160830570136 ;
createNode transform -n "pasted__pCube1" -p "group3";
	rename -uid "81B04107-4D77-57F2-8E50-0CBAEDA08CEA";
	setAttr ".t" -type "double3" 0 0.5 0 ;
createNode transform -n "pasted__transform5" -p "|group3|pasted__pCube1";
	rename -uid "FEEF6A85-4446-3833-9691-9DAB849EC428";
	setAttr ".v" no;
createNode mesh -n "pasted__pCubeShape1" -p "|group3|pasted__pCube1|pasted__transform5";
	rename -uid "CA83B077-4643-FA54-E361-69A116995954";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pasted__pCube2" -p "group3";
	rename -uid "435FDF03-494F-5FDF-7D83-E58A2523E910";
	setAttr ".t" -type "double3" 3 3 0 ;
createNode transform -n "pasted__transform4" -p "|group3|pasted__pCube2";
	rename -uid "03A92ADE-4A89-5EB6-3E08-57B17CEA145E";
	setAttr ".v" no;
createNode mesh -n "pasted__pCubeShape2" -p "|group3|pasted__pCube2|pasted__transform4";
	rename -uid "3B9F333D-4405-9917-1632-99A075975364";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pasted__group" -p "group3";
	rename -uid "D6194A8F-4227-55E9-CDD5-329508C60EA3";
	setAttr ".t" -type "double3" -6 0 0 ;
	setAttr ".rp" -type "double3" 3 3 0 ;
	setAttr ".sp" -type "double3" 3 3 0 ;
createNode transform -n "pasted__pasted__pCube2" -p "|group3|pasted__group";
	rename -uid "479F8248-459C-33E2-2FDB-3EBD1446C6EF";
	setAttr ".t" -type "double3" 3 3 0 ;
createNode transform -n "pasted__transform3" -p "|group3|pasted__group|pasted__pasted__pCube2";
	rename -uid "907B562F-491F-0855-6CA1-70A2A7F8F941";
	setAttr ".v" no;
createNode mesh -n "pasted__pasted__pCubeShape2" -p "|group3|pasted__group|pasted__pasted__pCube2|pasted__transform3";
	rename -uid "CAC83F7C-4011-C9C5-F7E8-74A502EFDB9F";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pasted__pCube3" -p "group3";
	rename -uid "CF693D6B-4343-0ECD-1F5F-3190A7DF8A9D";
	setAttr ".t" -type "double3" 0 3 -6.5076664289050354 ;
createNode transform -n "pasted__transform2" -p "|group3|pasted__pCube3";
	rename -uid "3B661B20-4A28-85B7-0C2D-5984B6C24C43";
	setAttr ".v" no;
createNode mesh -n "pasted__pCubeShape3" -p "|group3|pasted__pCube3|pasted__transform2";
	rename -uid "55525340-4C64-51BF-E1FF-6D8C789BE56D";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pasted__group1" -p "group3";
	rename -uid "090CB0F0-496D-11E7-8DC4-E79C872D3029";
	setAttr ".rp" -type "double3" 0 3 6 ;
	setAttr ".sp" -type "double3" 0 3 6 ;
createNode transform -n "pasted__pasted__pCube3" -p "|group3|pasted__group1";
	rename -uid "CA9993F8-4458-17E0-C4BA-7D8A49CC0A2E";
	setAttr ".t" -type "double3" 0 3 6.4924173987771638 ;
createNode transform -n "pasted__transform1" -p "|group3|pasted__group1|pasted__pasted__pCube3";
	rename -uid "A60750AD-4503-21CF-6E53-F486A3416047";
	setAttr ".v" no;
createNode mesh -n "pasted__pasted__pCubeShape3" -p "|group3|pasted__group1|pasted__pasted__pCube3|pasted__transform1";
	rename -uid "5EC110FD-4899-2DE9-1EDC-B2A86E0C9277";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pasted__pCube4" -p "group3";
	rename -uid "C2AFE15D-4990-5AE7-77AC-6FA84548F9F7";
createNode transform -n "pasted__polySurface5" -p "|group3|pasted__pCube4";
	rename -uid "4BF2ADBF-466A-7A30-D766-CFA4E969D300";
	setAttr ".t" -type "double3" 6.9012492786790638 0 -13.951035206307678 ;
	setAttr ".s" -type "double3" 4.0261049776377291 1.2987105168561961 1.618499129782387 ;
	setAttr ".rp" -type "double3" 0 3 14.807882317873187 ;
	setAttr ".sp" -type "double3" 0 3 11.630180358886719 ;
	setAttr ".spt" -type "double3" 0 0 3.1777019589864688 ;
createNode mesh -n "pasted__polySurfaceShape5" -p "|group3|pasted__pCube4|pasted__polySurface5";
	rename -uid "6BF7FAC3-419E-0270-36D4-B999C364CAEB";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr -av ".iog[0].og[0].gco";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pasted__transform6" -p "|group3|pasted__pCube4";
	rename -uid "1A06BCE1-41EA-0A0C-5E99-A9A22D19277A";
	setAttr ".v" no;
createNode mesh -n "pasted__pCube4Shape" -p "|group3|pasted__pCube4|pasted__transform6";
	rename -uid "76E82C3E-499E-B7DF-9F13-53A5F48F20DE";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pCylinder1";
	rename -uid "BA197738-42A2-AEB7-8060-D3B37DFF1E7C";
	setAttr ".t" -type "double3" -4.6589024706636017 -3.8533043653310193 1.5491719370103465 ;
	setAttr ".s" -type "double3" 0.62136736758343292 3.3011794990373051 0.62136736758343292 ;
createNode mesh -n "pCylinderShape1" -p "pCylinder1";
	rename -uid "718B0D0A-4DED-6C6D-771B-99A4B6803993";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pCube5";
	rename -uid "146384EA-44C5-E234-2AE5-B7812C10E723";
	setAttr ".t" -type "double3" -4.0811740111169339 6.5974715266430577 1.5491719370103465 ;
	setAttr ".s" -type "double3" 0.73749068406718066 0.68951672765410432 1 ;
createNode mesh -n "pCubeShape4" -p "pCube5";
	rename -uid "631C150C-4949-363C-05F2-FA9F242535D1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.75 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[2:5]" -type "float3"  -0.55599105 0 0 0.061147723 
		0 0 -0.55599105 0 0 0.061147723 0 0;
createNode transform -n "group4";
	rename -uid "3C8DCB34-4167-839F-D99E-4FAA148EC6A0";
	setAttr ".t" -type "double3" 8.7307686673616551 0 0 ;
	setAttr ".r" -type "double3" 0 0 90 ;
	setAttr ".s" -type "double3" 1 0.27195106951086395 1 ;
	setAttr ".rp" -type "double3" -4.6589024891817923 -3.8533043653310166 -1.8518190592065054e-008 ;
	setAttr ".sp" -type "double3" -4.6589024891817923 -3.8533043653310166 -1.8518190592065054e-008 ;
createNode transform -n "pasted__pCylinder1" -p "group4";
	rename -uid "61D0161B-4D14-2ADF-CB30-A0AF916AB68E";
	setAttr ".t" -type "double3" 6.3230771760677476 19.174027863263987 1.5491719370103465 ;
	setAttr ".s" -type "double3" 0.62136736758343292 1.3424054240464212 0.62136736758343292 ;
createNode mesh -n "pasted__pCylinderShape1" -p "pasted__pCylinder1";
	rename -uid "0DCBFEA9-43AC-935A-4EC9-F2AB113A4674";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "group5";
	rename -uid "66D0F13A-4144-90CA-4E99-268C0A276FCB";
	setAttr ".t" -type "double3" 2.6787445792849409 0 0 ;
	setAttr ".r" -type "double3" 0 0 90 ;
	setAttr ".rp" -type "double3" -2.1904414493685316 6.698387732351101 -1.8518190592065054e-008 ;
	setAttr ".sp" -type "double3" -2.1904414493685316 6.698387732351101 -1.8518190592065054e-008 ;
createNode transform -n "pasted__group4" -p "group5";
	rename -uid "28213D76-4131-6635-E86A-69ABA9C25D6E";
	setAttr ".t" -type "double3" 8.7307686673616551 0 0 ;
	setAttr ".r" -type "double3" 0 0 90 ;
	setAttr ".s" -type "double3" 1 0.27195106951086395 1 ;
	setAttr ".rp" -type "double3" -4.6589024891817923 -3.8533043653310166 -1.8518190592065054e-008 ;
	setAttr ".sp" -type "double3" -4.6589024891817923 -3.8533043653310166 -1.8518190592065054e-008 ;
createNode transform -n "pasted__pasted__pCylinder1" -p "|group5|pasted__group4";
	rename -uid "0D54FF72-4C7E-CDD7-C289-1FA9B1896CB9";
	setAttr ".t" -type "double3" 7.8505456022975322 18.752293404303682 1.5491719370103465 ;
	setAttr ".s" -type "double3" 0.28682833355379345 0.35526875283854087 0.28682833355379345 ;
createNode mesh -n "pasted__pasted__pCylinderShape1" -p "|group5|pasted__group4|pasted__pasted__pCylinder1";
	rename -uid "E3817B65-470D-BB6D-94E2-B5BDCBD090B5";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "group6";
	rename -uid "20993C7D-46FD-2CA9-5333-BA8C9DF599E4";
	setAttr ".t" -type "double3" 0 0 -3.643671814907671 ;
	setAttr ".r" -type "double3" 0 0 90 ;
	setAttr ".rp" -type "double3" -2.1904414493685325 6.9964107079051523 -1.8518190592065054e-008 ;
	setAttr ".sp" -type "double3" -2.1904414493685325 6.9964107079051523 -1.8518190592065054e-008 ;
createNode transform -n "pasted__group4" -p "group6";
	rename -uid "BE91B2D5-43EA-E590-B6A3-48ABC7ED5C62";
	setAttr ".t" -type "double3" 8.7307686673616551 0 0 ;
	setAttr ".r" -type "double3" 0 0 90 ;
	setAttr ".s" -type "double3" 1 0.27195106951086395 1 ;
	setAttr ".rp" -type "double3" -4.6589024891817923 -3.8533043653310166 -1.8518190592065054e-008 ;
	setAttr ".sp" -type "double3" -4.6589024891817923 -3.8533043653310166 -1.8518190592065054e-008 ;
createNode transform -n "pasted__pasted__pCylinder1" -p "|group6|pasted__group4";
	rename -uid "F2441FF8-4D08-59DB-3957-42999C84EEF0";
	setAttr ".t" -type "double3" 7.96864043784415 21.717670879975625 1.059029220513537 ;
	setAttr ".s" -type "double3" 0.85346008575756527 0.8720414291612576 0.85346008575756527 ;
createNode mesh -n "pasted__pasted__pCylinderShape1" -p "|group6|pasted__group4|pasted__pasted__pCylinder1";
	rename -uid "6233D624-4DCD-B302-F6A1-38AC40CCB153";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pasted__group5" -p "group6";
	rename -uid "9BBC8847-482F-DD24-FF68-1DB363CC77BC";
	setAttr ".t" -type "double3" 2.6787445792849409 0 0 ;
	setAttr ".r" -type "double3" 0 0 90 ;
	setAttr ".rp" -type "double3" -2.1904414493685316 6.698387732351101 -1.8518190592065054e-008 ;
	setAttr ".sp" -type "double3" -2.1904414493685316 6.698387732351101 -1.8518190592065054e-008 ;
createNode transform -n "pasted__pasted__group4" -p "pasted__group5";
	rename -uid "BDA6793E-4AF5-79B2-3B61-2D88162F42F5";
	setAttr ".t" -type "double3" 8.7307686673616551 0 0 ;
	setAttr ".r" -type "double3" 0 0 90 ;
	setAttr ".s" -type "double3" 1 0.27195106951086395 1 ;
	setAttr ".rp" -type "double3" -4.6589024891817923 -3.8533043653310166 -1.8518190592065054e-008 ;
	setAttr ".sp" -type "double3" -4.6589024891817923 -3.8533043653310166 -1.8518190592065054e-008 ;
createNode transform -n "pasted__pasted__pasted__pCylinder1" -p "|group6|pasted__group5|pasted__pasted__group4";
	rename -uid "FBCFD834-42B0-AE07-09AB-B7808329333A";
	setAttr ".t" -type "double3" 8.8086383213799113 11.640445369095209 0.13641357915006536 ;
	setAttr ".r" -type "double3" 90 0 0 ;
	setAttr ".s" -type "double3" 0.36139246964983257 0.30130932631236518 1.1510697302405644 ;
createNode mesh -n "pasted__pasted__pasted__pCylinderShape1" -p "pasted__pasted__pasted__pCylinder1";
	rename -uid "6D5D4606-4D79-F418-881A-CF847EF54A10";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "group7";
	rename -uid "C7AF401B-4CB2-E99A-F8EF-9890F5BEA946";
	setAttr ".t" -type "double3" 1.6149801518456122 -2.5048978479730781 2.4000515375696656 ;
	setAttr ".rp" -type "double3" -3.9682692777232154 6.3046642690565822 -2.5846426198292267 ;
	setAttr ".sp" -type "double3" -3.9682692777232154 6.3046642690565822 -2.5846426198292267 ;
createNode transform -n "pasted__group6" -p "group7";
	rename -uid "50B41E7E-465C-F8E8-5DA6-E1A1BEFD4169";
	setAttr ".t" -type "double3" 0 0 -3.643671814907671 ;
	setAttr ".r" -type "double3" 0 0 90 ;
	setAttr ".rp" -type "double3" -2.1904414493685325 6.9964107079051523 -1.8518190592065054e-008 ;
	setAttr ".sp" -type "double3" -2.1904414493685325 6.9964107079051523 -1.8518190592065054e-008 ;
createNode transform -n "pasted__pasted__group4" -p "pasted__group6";
	rename -uid "BADF3862-49D9-BDA2-1C44-EAAC792914B8";
	setAttr ".t" -type "double3" 8.7307686673616551 0 0 ;
	setAttr ".r" -type "double3" 0 0 90 ;
	setAttr ".s" -type "double3" 1 0.27195106951086395 1 ;
	setAttr ".rp" -type "double3" -4.6589024891817923 -3.8533043653310166 -1.8518190592065054e-008 ;
	setAttr ".sp" -type "double3" -4.6589024891817923 -3.8533043653310166 -1.8518190592065054e-008 ;
createNode transform -n "group8";
	rename -uid "BA83C582-4254-690B-F9F6-A2BDBD005A88";
	setAttr ".t" -type "double3" 3.2912016362963352 0 0 ;
	setAttr ".rp" -type "double3" -0.91312206602658064 3.0000000000000004 0.022808293789312373 ;
	setAttr ".sp" -type "double3" -0.91312206602658064 3.0000000000000004 0.022808293789312373 ;
createNode transform -n "pasted__pCube1" -p "group8";
	rename -uid "B386244C-4844-EF07-9AAA-E2B4F3CD8B45";
	setAttr ".t" -type "double3" 0 0.5 0 ;
createNode transform -n "pasted__transform5" -p "|group8|pasted__pCube1";
	rename -uid "9D785110-4FDE-A33F-3CCA-DFAE652EA0ED";
	setAttr ".v" no;
createNode mesh -n "pasted__pCubeShape1" -p "|group8|pasted__pCube1|pasted__transform5";
	rename -uid "91018301-43C3-9783-0ADF-96A85E0DB71D";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pasted__pCube2" -p "group8";
	rename -uid "AFF3A4C1-4509-839E-3B4B-A693E1A2AE20";
	setAttr ".t" -type "double3" 3 3 0 ;
createNode transform -n "pasted__transform4" -p "|group8|pasted__pCube2";
	rename -uid "3082EAF2-4E54-B98B-2958-E4BA1C3EB83A";
	setAttr ".v" no;
createNode mesh -n "pasted__pCubeShape2" -p "|group8|pasted__pCube2|pasted__transform4";
	rename -uid "0A3C0D8A-49B0-6CAF-E49E-C490DF914405";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pasted__group" -p "group8";
	rename -uid "2EB6483C-42BB-8AAE-9D64-74BB451CBB90";
	setAttr ".t" -type "double3" -6 0 0 ;
	setAttr ".rp" -type "double3" 3 3 0 ;
	setAttr ".sp" -type "double3" 3 3 0 ;
createNode transform -n "pasted__pasted__pCube2" -p "|group8|pasted__group";
	rename -uid "1477E056-4C14-8434-52CB-5FA132A29649";
	setAttr ".t" -type "double3" 3 3 0 ;
createNode transform -n "pasted__transform3" -p "|group8|pasted__group|pasted__pasted__pCube2";
	rename -uid "8ED0A2E4-468E-E93F-5699-8FBD239363A0";
	setAttr ".v" no;
createNode mesh -n "pasted__pasted__pCubeShape2" -p "|group8|pasted__group|pasted__pasted__pCube2|pasted__transform3";
	rename -uid "CE51469E-4E42-CD5A-F943-7E958114DBC5";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pasted__pCube3" -p "group8";
	rename -uid "3F953146-4B1A-3BD1-91DC-ACB4F96ED540";
	setAttr ".t" -type "double3" 0 3 -6.5076664289050354 ;
createNode transform -n "pasted__transform2" -p "|group8|pasted__pCube3";
	rename -uid "5A03E05C-4926-2A7D-7466-6E9C83E47CF7";
	setAttr ".v" no;
createNode mesh -n "pasted__pCubeShape3" -p "|group8|pasted__pCube3|pasted__transform2";
	rename -uid "84EF4207-4CF1-DE53-5D56-1380CFE6D435";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pasted__group1" -p "group8";
	rename -uid "BB2ED873-48CE-6957-EB4E-E9B3EAF759F0";
	setAttr ".rp" -type "double3" 0 3 6 ;
	setAttr ".sp" -type "double3" 0 3 6 ;
createNode transform -n "pasted__pasted__pCube3" -p "|group8|pasted__group1";
	rename -uid "1369D534-4607-C997-8284-0EA6CFD9CB69";
	setAttr ".t" -type "double3" 0 3 6.4924173987771638 ;
createNode transform -n "pasted__transform1" -p "|group8|pasted__group1|pasted__pasted__pCube3";
	rename -uid "6E65B6B1-475B-83BF-D240-5AAD24260083";
	setAttr ".v" no;
createNode mesh -n "pasted__pasted__pCubeShape3" -p "|group8|pasted__group1|pasted__pasted__pCube3|pasted__transform1";
	rename -uid "95539032-455F-E39F-B4E5-2F92DD66E30E";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pasted__pCube4" -p "group8";
	rename -uid "A399883B-479C-1AC3-8886-CB89DA39E6EE";
createNode transform -n "pasted__polySurface3" -p "|group8|pasted__pCube4";
	rename -uid "843A0A7D-4C43-C73E-1C5E-CA9CD4570604";
	setAttr ".t" -type "double3" 12.018106823739188 0 0.022808293789312373 ;
	setAttr ".s" -type "double3" 1.6524882641063217 1.297159368717423 0.9724711476634984 ;
	setAttr ".rp" -type "double3" -3 3 0 ;
	setAttr ".sp" -type "double3" -3 3 0 ;
createNode mesh -n "pasted__polySurfaceShape3" -p "pasted__polySurface3";
	rename -uid "90A2E81C-45D3-3C8A-9513-D6B296498A9C";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pasted__transform6" -p "|group8|pasted__pCube4";
	rename -uid "6FC958C4-41EC-B5DD-EEF6-65BDF349D519";
	setAttr ".v" no;
createNode mesh -n "pasted__pCube4Shape" -p "|group8|pasted__pCube4|pasted__transform6";
	rename -uid "2B778747-4AB1-B3F9-9EAC-9D854AD48C42";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "group9";
	rename -uid "F197FB41-492D-A457-65C4-02B0D3EE6184";
	setAttr ".t" -type "double3" 0 0 0.53346314163740072 ;
	setAttr ".s" -type "double3" 1 1 1.9474867866061578 ;
	setAttr ".rp" -type "double3" 6.9108607622038072 2.9999999999999996 0.27750457535042961 ;
	setAttr ".sp" -type "double3" 6.9108607622038072 2.9999999999999996 0.065421460491670747 ;
	setAttr ".spt" -type "double3" 0 0 0.21208311485875886 ;
createNode transform -n "pasted__pCube1" -p "group9";
	rename -uid "3BB82893-4FB6-5D3A-444E-2EA8721AB88E";
	setAttr ".t" -type "double3" 0 0.5 0 ;
createNode transform -n "pasted__transform5" -p "|group9|pasted__pCube1";
	rename -uid "C4935934-42F3-803C-ADDF-9EA5417F452B";
	setAttr ".v" no;
createNode mesh -n "pasted__pCubeShape1" -p "|group9|pasted__pCube1|pasted__transform5";
	rename -uid "C663BE74-4E41-8F5C-FD9D-0FB5643E8DA9";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pasted__pCube2" -p "group9";
	rename -uid "19773FF0-4C50-1224-2C75-BE9CFE4442E6";
	setAttr ".t" -type "double3" 3 3 0 ;
createNode transform -n "pasted__transform4" -p "|group9|pasted__pCube2";
	rename -uid "0A2EDFF5-40D4-CEE9-979D-F284E4A3A8D5";
	setAttr ".v" no;
createNode mesh -n "pasted__pCubeShape2" -p "|group9|pasted__pCube2|pasted__transform4";
	rename -uid "8D4D5E73-413C-B935-8A14-EBB47BF4AEB7";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pasted__group" -p "group9";
	rename -uid "A6E9DE33-4C10-D113-9686-C096D206A4BF";
	setAttr ".t" -type "double3" -6 0 0 ;
	setAttr ".rp" -type "double3" 3 3 0 ;
	setAttr ".sp" -type "double3" 3 3 0 ;
createNode transform -n "pasted__pasted__pCube2" -p "|group9|pasted__group";
	rename -uid "0EF33B70-4004-8FE5-7C6E-7B8F9645F6E1";
	setAttr ".t" -type "double3" 3 3 0 ;
createNode transform -n "pasted__transform3" -p "|group9|pasted__group|pasted__pasted__pCube2";
	rename -uid "3301F36E-4B6F-76BD-15DB-B3B427449267";
	setAttr ".v" no;
createNode mesh -n "pasted__pasted__pCubeShape2" -p "|group9|pasted__group|pasted__pasted__pCube2|pasted__transform3";
	rename -uid "D18FEED9-41D1-D801-6D88-0BBFE2E1BD3A";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pasted__pCube3" -p "group9";
	rename -uid "2E549ABF-42D1-79C9-24A3-24A1C74204BE";
	setAttr ".t" -type "double3" 0 3 -6.5076664289050354 ;
createNode transform -n "pasted__transform2" -p "|group9|pasted__pCube3";
	rename -uid "E7233E82-493D-BABE-8401-85A48CCB927E";
	setAttr ".v" no;
createNode mesh -n "pasted__pCubeShape3" -p "|group9|pasted__pCube3|pasted__transform2";
	rename -uid "6D1A2A08-4A49-D564-090E-5388D9BF330E";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pasted__group1" -p "group9";
	rename -uid "6A84AA0B-42C4-99DC-78FD-7DBBD1B27257";
	setAttr ".rp" -type "double3" 0 3 6 ;
	setAttr ".sp" -type "double3" 0 3 6 ;
createNode transform -n "pasted__pasted__pCube3" -p "|group9|pasted__group1";
	rename -uid "36A904EC-4FEB-F0C0-100C-2EA903E0D9B5";
	setAttr ".t" -type "double3" 0 3 6.4924173987771638 ;
createNode transform -n "pasted__transform1" -p "|group9|pasted__group1|pasted__pasted__pCube3";
	rename -uid "A5E4C6C7-4B32-DB17-3DCE-BCA3A1DAE5C8";
	setAttr ".v" no;
createNode mesh -n "pasted__pasted__pCubeShape3" -p "|group9|pasted__group1|pasted__pasted__pCube3|pasted__transform1";
	rename -uid "7D957EB0-4273-80CC-177D-37B264D3F107";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pasted__pCube4" -p "group9";
	rename -uid "E246536C-46DC-A118-CD61-9EBFCA089F31";
createNode transform -n "pasted__polySurface5" -p "|group9|pasted__pCube4";
	rename -uid "BEC64F4D-4458-23A5-F37A-F3A91EC24FA7";
	setAttr ".t" -type "double3" 6.9108607622038072 -2.4696171431359333 -17.893560088364207 ;
	setAttr ".s" -type "double3" 4.0261049776377291 -0.0067105657493738893 2.7285440645107855 ;
	setAttr ".rp" -type "double3" 0 3 17.554923777197864 ;
	setAttr ".sp" -type "double3" 0 3 13.327457427978516 ;
	setAttr ".spt" -type "double3" 0 0 4.2274663492193465 ;
createNode mesh -n "pasted__polySurfaceShape5" -p "|group9|pasted__pCube4|pasted__polySurface5";
	rename -uid "89D7354B-44CE-AB71-436F-3593AC50EC70";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pasted__transform6" -p "|group9|pasted__pCube4";
	rename -uid "0C41FDD5-4935-E565-E9A4-EEB40E7F7EB6";
	setAttr ".v" no;
createNode mesh -n "pasted__pCube4Shape" -p "|group9|pasted__pCube4|pasted__transform6";
	rename -uid "EE44F8A7-4810-6957-E47B-A2BFA2942030";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "BF890FF5-438C-822E-E51F-E7B726F15E0B";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode displayLayerManager -n "layerManager";
	rename -uid "E743E57C-4A3B-378A-7F2D-D6B69E524A80";
createNode displayLayer -n "defaultLayer";
	rename -uid "A153FD72-43AF-AE52-B1F4-D09BCAE824B3";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "176B023A-404C-2D70-F342-1F93F587B509";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "177D236F-4E22-1AA9-BEAE-CAA70E4D7C11";
	setAttr ".g" yes;
createNode polyCube -n "polyCube1";
	rename -uid "CB583A31-4E9A-40AA-40AF-EB80C4067D63";
	setAttr ".w" 7;
	setAttr ".d" 14;
	setAttr ".cuv" 4;
createNode polyCube -n "polyCube2";
	rename -uid "3EF01D25-4A35-508B-A78A-EDBE96DF7CF9";
	setAttr ".h" 4;
	setAttr ".d" 14;
	setAttr ".cuv" 4;
createNode polyCube -n "pasted__polyCube2";
	rename -uid "B1F04677-4BEC-5686-16F0-6A9219D0A0DB";
	setAttr ".h" 4;
	setAttr ".d" 14;
	setAttr ".cuv" 4;
createNode polyCube -n "polyCube3";
	rename -uid "EA3E612A-4984-2EE0-36BC-1488DC376043";
	setAttr ".w" 5;
	setAttr ".h" 4;
	setAttr ".cuv" 4;
createNode polyCube -n "pasted__polyCube3";
	rename -uid "B651DED2-4072-BC8D-A446-8EA019D32666";
	setAttr ".w" 5;
	setAttr ".h" 4;
	setAttr ".cuv" 4;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "B1F842C6-4A9C-0319-F56A-BEB502533EEA";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"top\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n"
		+ "                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n"
		+ "                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n"
		+ "                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 1\n                -height 1\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n"
		+ "            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n"
		+ "            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"side\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n"
		+ "                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n"
		+ "                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n"
		+ "                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 1\n                -height 1\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n"
		+ "            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n"
		+ "            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n"
		+ "            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n"
		+ "                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n"
		+ "                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n"
		+ "                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 1\n                -height 1\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n"
		+ "            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n"
		+ "            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n"
		+ "            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 1\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n"
		+ "                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n"
		+ "                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n"
		+ "                -width 1172\n                -height 864\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 1\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n"
		+ "            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n"
		+ "            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1172\n            -height 864\n"
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
		+ "                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"visorPanel\" -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"createNodePanel\" -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"polyTexturePlacementPanel\" -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"renderWindowPanel\" -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"Blend Shape\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tblendShapePanel -unParent -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynRelEdPanel\" -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"relationshipPanel\" -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"referenceEditorPanel\" -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"componentEditorPanel\" -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynPaintScriptedPanelType\" -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"scriptEditorPanel\" -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"profilerPanel\" -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperShadePanel\" -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n"
		+ "                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n"
		+ "                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n"
		+ "        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 1\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1172\\n    -height 864\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 1\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1172\\n    -height 864\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "55B72373-4752-09F2-68FF-CABC1CC70704";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode polyUnite -n "polyUnite1";
	rename -uid "8DA239A3-4780-00DC-1067-1AB747E9731E";
	setAttr -s 5 ".ip";
	setAttr -s 5 ".im";
createNode groupId -n "groupId1";
	rename -uid "83314D01-44B1-C3A8-9EE5-BC9B6E1DC8B7";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts1";
	rename -uid "AC3087A4-442F-BFE4-F9AD-1F9E436F2EC8";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId2";
	rename -uid "560F39AC-4A22-E518-01C1-F3B112BFF8DF";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3";
	rename -uid "FBEA67A2-4623-1997-EE77-E798F9D2361B";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts2";
	rename -uid "5AED6949-4B68-2342-D3CB-3F91E9439F99";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId4";
	rename -uid "A8CC47C7-440D-28D5-2C49-CCAD67957CE4";
	setAttr ".ihi" 0;
createNode groupId -n "groupId5";
	rename -uid "7FF00EF1-4873-DD2A-F6C0-CAA577EDF839";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts3";
	rename -uid "5ECB7A1B-490E-CE0D-CCBC-2B87890293DE";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId6";
	rename -uid "3960ABE7-424B-1895-12FE-6790C093C049";
	setAttr ".ihi" 0;
createNode groupId -n "groupId7";
	rename -uid "EAE5E851-49B2-313F-7875-BDADE8355478";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts4";
	rename -uid "E910ABE4-49CB-7305-9DF7-AABFDDD921D1";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId8";
	rename -uid "776AFBA4-4981-4427-32B7-50866C1A4EEC";
	setAttr ".ihi" 0;
createNode groupId -n "groupId9";
	rename -uid "B937872F-49BA-F926-34FE-2E80AB99CBD0";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts5";
	rename -uid "E013FA2B-4A99-86B2-9687-8483DF6748C9";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId10";
	rename -uid "1FDE60EA-48CB-D582-3895-23BF7BF32872";
	setAttr ".ihi" 0;
createNode groupId -n "groupId11";
	rename -uid "4467678A-4C3F-E0CD-48E7-90A34B7DA98D";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts6";
	rename -uid "0132E9B5-4DC4-9047-941E-02A1CE4FE024";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:29]";
createNode polySeparate -n "polySeparate1";
	rename -uid "F620CA6C-415F-866C-6B7D-2190E145C729";
	setAttr ".ic" 5;
	setAttr -s 2 ".out";
createNode groupId -n "groupId14";
	rename -uid "3220F363-4C5C-D3A6-A3DB-8A962FFC6252";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts9";
	rename -uid "C20563EF-49F2-9B6E-9B75-4081B0FACFA4";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupParts -n "groupParts11";
	rename -uid "EE1DA803-45AE-B186-07E2-2592A75FD760";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId16";
	rename -uid "43B319CA-4E24-E8EE-3745-60A773F654FC";
	setAttr ".ihi" 0;
createNode groupParts -n "pasted__groupParts6";
	rename -uid "F02456E3-493F-A394-526D-1A921332C085";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:29]";
createNode polyUnite -n "pasted__polyUnite1";
	rename -uid "0DAA633C-47D6-7B8C-C461-25AB2FEA8A1C";
	setAttr -s 5 ".ip";
	setAttr -s 5 ".im";
createNode groupParts -n "pasted__groupParts1";
	rename -uid "60EFE9E3-4353-3D25-DDA5-46A7FE6E919D";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode polyCube -n "pasted__polyCube1";
	rename -uid "278230BC-40B6-62C0-2923-3DA90479C6F0";
	setAttr ".w" 7;
	setAttr ".d" 14;
	setAttr ".cuv" 4;
createNode groupId -n "pasted__groupId1";
	rename -uid "05BB36A3-4D7A-5980-BF84-67AD5A8DEF65";
	setAttr ".ihi" 0;
createNode groupId -n "pasted__groupId2";
	rename -uid "D48BE29B-4619-9CB3-1FC9-0B9D7E55BE60";
	setAttr ".ihi" 0;
createNode groupParts -n "pasted__groupParts2";
	rename -uid "2D0B61CC-46AE-3162-2E93-9F9515BA9192";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode polyCube -n "pasted__polyCube4";
	rename -uid "25DF6038-4D1E-0BEB-BCBA-BDBE32C4F325";
	setAttr ".h" 4;
	setAttr ".d" 14;
	setAttr ".cuv" 4;
createNode groupId -n "pasted__groupId3";
	rename -uid "B3A78548-4402-DF4E-FBE0-4D8B509FF6C7";
	setAttr ".ihi" 0;
createNode groupId -n "pasted__groupId4";
	rename -uid "960926FD-48AB-6FEC-8964-6AB5E5A6430A";
	setAttr ".ihi" 0;
createNode groupParts -n "pasted__groupParts3";
	rename -uid "B716A379-4E14-5FC4-C870-BC849173E8ED";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode polyCube -n "pasted__pasted__polyCube2";
	rename -uid "47C897A3-4D4E-7B5A-C971-D6A1316AE096";
	setAttr ".h" 4;
	setAttr ".d" 14;
	setAttr ".cuv" 4;
createNode groupId -n "pasted__groupId5";
	rename -uid "27367009-49E5-6263-2E72-2CB30BACD7AA";
	setAttr ".ihi" 0;
createNode groupId -n "pasted__groupId6";
	rename -uid "9F6BC470-44F9-043D-28DD-47A33AB0B262";
	setAttr ".ihi" 0;
createNode groupParts -n "pasted__groupParts4";
	rename -uid "A980151F-45CA-5A82-1651-4CB09129E698";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode polyCube -n "pasted__polyCube5";
	rename -uid "C2A7F0A2-4B93-C4D2-001C-D2A2BD979DC8";
	setAttr ".w" 5;
	setAttr ".h" 4;
	setAttr ".cuv" 4;
createNode groupId -n "pasted__groupId7";
	rename -uid "E05AF543-4493-1C35-9DD9-9E9FF75DF286";
	setAttr ".ihi" 0;
createNode groupId -n "pasted__groupId8";
	rename -uid "BF4C6151-4918-C4B6-7CED-6FB192E9F329";
	setAttr ".ihi" 0;
createNode groupParts -n "pasted__groupParts5";
	rename -uid "ECE920CF-4743-1B20-700A-BC9DEEF3E9D0";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode polyCube -n "pasted__pasted__polyCube3";
	rename -uid "EB2EA2B3-471D-D471-673B-329CDD851B5F";
	setAttr ".w" 5;
	setAttr ".h" 4;
	setAttr ".cuv" 4;
createNode groupId -n "pasted__groupId9";
	rename -uid "BB8C70D1-453A-C30E-3617-A696E33F4FEC";
	setAttr ".ihi" 0;
createNode groupId -n "pasted__groupId10";
	rename -uid "2A477A79-4627-0AE3-D2E9-95BBF418E73A";
	setAttr ".ihi" 0;
createNode groupId -n "pasted__groupId11";
	rename -uid "048F1D09-4A81-4268-14D9-0BB126A9D1F0";
	setAttr ".ihi" 0;
createNode groupParts -n "pasted__groupParts13";
	rename -uid "F99DE16C-4807-AFE6-E1F3-3BB5D0801A98";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode polySeparate -n "pasted__polySeparate1";
	rename -uid "FECD18CE-43AF-2A83-716E-7CBF0BF116E9";
	setAttr ".ic" 5;
createNode groupParts -n "pasted__groupParts12";
	rename -uid "B3597025-40CC-DCE9-87A5-7286B195991A";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:29]";
createNode polyUnite -n "pasted__polyUnite2";
	rename -uid "DBF5550C-4C93-A0B9-78DA-30AAE91610EE";
	setAttr -s 5 ".ip";
	setAttr -s 5 ".im";
createNode groupParts -n "pasted__groupParts7";
	rename -uid "291EFF28-4127-6642-60BC-A7ADA0430A6C";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode polyCube -n "pasted__polyCube6";
	rename -uid "50472AAB-46B7-52F4-CC2A-97A60EE84E22";
	setAttr ".w" 7;
	setAttr ".d" 14;
	setAttr ".cuv" 4;
createNode groupId -n "pasted__groupId12";
	rename -uid "36CF9D48-4B35-E5ED-AD1C-3DB364BBF402";
	setAttr ".ihi" 0;
createNode groupId -n "pasted__groupId13";
	rename -uid "343F996C-4098-E8F6-01FE-B2BBBBC15EFD";
	setAttr ".ihi" 0;
createNode groupParts -n "pasted__groupParts8";
	rename -uid "15D75FA2-4396-353F-CC19-349BC594C944";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode polyCube -n "pasted__polyCube7";
	rename -uid "38202CD8-45EA-174D-0B41-E4B53B10ACBD";
	setAttr ".h" 4;
	setAttr ".d" 14;
	setAttr ".cuv" 4;
createNode groupId -n "pasted__groupId14";
	rename -uid "0D838082-4F84-D341-2B0F-F3922D790D30";
	setAttr ".ihi" 0;
createNode groupId -n "pasted__groupId15";
	rename -uid "F28371C5-4E1F-1E18-CF9F-A1BC5C8B3D82";
	setAttr ".ihi" 0;
createNode groupParts -n "pasted__groupParts9";
	rename -uid "387B5214-4A2B-3718-3FB4-9B81204CDCE7";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode polyCube -n "pasted__pasted__polyCube4";
	rename -uid "9F13C384-4C4E-FBB7-EA37-F5A19E347163";
	setAttr ".h" 4;
	setAttr ".d" 14;
	setAttr ".cuv" 4;
createNode groupId -n "pasted__groupId16";
	rename -uid "E31D8811-4FED-C8FA-868E-CAB40E42EB93";
	setAttr ".ihi" 0;
createNode groupId -n "pasted__groupId17";
	rename -uid "0EBD7333-4D9F-F977-DB77-62A043CDA909";
	setAttr ".ihi" 0;
createNode groupParts -n "pasted__groupParts10";
	rename -uid "1F0580B6-40C6-CB7D-2351-6F8B772B92BA";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode polyCube -n "pasted__polyCube8";
	rename -uid "60756223-49E9-C372-FA38-CA95215A4B2C";
	setAttr ".w" 5;
	setAttr ".h" 4;
	setAttr ".cuv" 4;
createNode groupId -n "pasted__groupId18";
	rename -uid "E9928973-4C39-CF40-0701-85BAE942C5A0";
	setAttr ".ihi" 0;
createNode groupId -n "pasted__groupId19";
	rename -uid "D011865E-47F5-F638-CB88-73947757D6FA";
	setAttr ".ihi" 0;
createNode groupParts -n "pasted__groupParts11";
	rename -uid "2F1C795F-47CB-2D95-5283-E0A552967538";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode polyCube -n "pasted__pasted__polyCube5";
	rename -uid "BC288CB3-4F72-08E8-1E09-6B9BA4A75363";
	setAttr ".w" 5;
	setAttr ".h" 4;
	setAttr ".cuv" 4;
createNode groupId -n "pasted__groupId20";
	rename -uid "0F0DAA31-4FAE-6DA6-509E-679786404B90";
	setAttr ".ihi" 0;
createNode groupId -n "pasted__groupId21";
	rename -uid "E87A30F9-49FA-891A-BDD5-C9B8EF3CB2B4";
	setAttr ".ihi" 0;
createNode groupId -n "pasted__groupId22";
	rename -uid "1F03A5E7-406A-F859-09C4-7EB930CCC543";
	setAttr ".ihi" 0;
createNode groupId -n "pasted__groupId23";
	rename -uid "DA0549F9-41DF-3779-5BED-DBB5B33E248F";
	setAttr ".ihi" 0;
createNode polyCylinder -n "polyCylinder1";
	rename -uid "0D335D68-4F19-A3BE-3C2F-EAB0E405C8F4";
	setAttr ".r" 0.58138722216882865;
	setAttr ".h" 6.4210631317575846;
	setAttr ".sa" 10;
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode polyCube -n "polyCube4";
	rename -uid "8A97D151-4E7F-1172-8C05-FCABA7FEA69D";
	setAttr ".w" 2;
	setAttr ".h" 3;
	setAttr ".d" 2;
	setAttr ".cuv" 4;
createNode polyCylinder -n "pasted__polyCylinder1";
	rename -uid "A87ABF92-4AAD-3664-270B-B8A2BBEBF1B3";
	setAttr ".r" 0.58138722216882865;
	setAttr ".h" 6.4210631317575846;
	setAttr ".sa" 10;
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode polyCylinder -n "pasted__pasted__polyCylinder1";
	rename -uid "7C272F9F-4BDC-6AE3-C50F-6BAD69B3400E";
	setAttr ".r" 0.58138722216882865;
	setAttr ".h" 6.4210631317575846;
	setAttr ".sa" 10;
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode polyCylinder -n "pasted__pasted__polyCylinder2";
	rename -uid "87612148-4D63-2BA8-DD8D-3FB77CB49D66";
	setAttr ".r" 0.58138722216882865;
	setAttr ".h" 6.4210631317575846;
	setAttr ".sa" 10;
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode polyCylinder -n "pasted__pasted__pasted__polyCylinder1";
	rename -uid "8B1132D1-4782-5B84-82B6-F4A0C05DF0BD";
	setAttr ".r" 0.58138722216882865;
	setAttr ".h" 6.4210631317575846;
	setAttr ".sa" 10;
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode groupParts -n "pasted__groupParts20";
	rename -uid "82FE6AA8-4062-28CA-765D-F5BFD47F8D06";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode polySeparate -n "pasted__polySeparate2";
	rename -uid "7E0563B3-423C-8C21-50FA-F8AD496B0CA0";
	setAttr ".ic" 5;
createNode groupParts -n "pasted__groupParts19";
	rename -uid "982FA702-47E9-54F6-D024-96B5F1E90580";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:29]";
createNode polyUnite -n "pasted__polyUnite3";
	rename -uid "8E751D02-4704-DEC5-0789-F99A65B017E4";
	setAttr -s 5 ".ip";
	setAttr -s 5 ".im";
createNode groupParts -n "pasted__groupParts14";
	rename -uid "26486BE2-4489-690E-A9B8-B9878AC65703";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode polyCube -n "pasted__polyCube9";
	rename -uid "DFE4ED19-4B49-D34E-877B-1692C5A42149";
	setAttr ".w" 7;
	setAttr ".d" 14;
	setAttr ".cuv" 4;
createNode groupId -n "pasted__groupId24";
	rename -uid "2CE03CE7-4338-3050-B271-B3BFD5F02E69";
	setAttr ".ihi" 0;
createNode groupId -n "pasted__groupId25";
	rename -uid "0B432D22-46E9-2A75-573F-0E8959E8FC81";
	setAttr ".ihi" 0;
createNode groupParts -n "pasted__groupParts15";
	rename -uid "B9B907C8-406C-78CB-655A-869698A61272";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode polyCube -n "pasted__polyCube10";
	rename -uid "0656B5F2-444A-11F2-8937-7BACB82A35F1";
	setAttr ".h" 4;
	setAttr ".d" 14;
	setAttr ".cuv" 4;
createNode groupId -n "pasted__groupId26";
	rename -uid "81AEE7D2-4CA6-4B11-32C0-03BB07F78489";
	setAttr ".ihi" 0;
createNode groupId -n "pasted__groupId27";
	rename -uid "5C323BE0-44F8-8531-CA73-6BA3FB5F1F31";
	setAttr ".ihi" 0;
createNode groupParts -n "pasted__groupParts16";
	rename -uid "EAFAE53A-4ECB-2933-F104-16AE43BEDD88";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode polyCube -n "pasted__pasted__polyCube6";
	rename -uid "E2E95BD0-42F2-A1D8-E291-52AFE95994E6";
	setAttr ".h" 4;
	setAttr ".d" 14;
	setAttr ".cuv" 4;
createNode groupId -n "pasted__groupId28";
	rename -uid "700994E8-430C-EA00-B4EC-20907A3F72E8";
	setAttr ".ihi" 0;
createNode groupId -n "pasted__groupId29";
	rename -uid "F094FEFB-4FB8-E1FB-7CF4-CB985BEB2F36";
	setAttr ".ihi" 0;
createNode groupParts -n "pasted__groupParts17";
	rename -uid "AD5BD3E2-40E2-F8ED-9877-E8A84B11C25F";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode polyCube -n "pasted__polyCube11";
	rename -uid "6B2A00C8-4317-A971-421F-7F841474D946";
	setAttr ".w" 5;
	setAttr ".h" 4;
	setAttr ".cuv" 4;
createNode groupId -n "pasted__groupId30";
	rename -uid "D2FFF1F1-4CC1-7F91-9FD9-E68C2F2DA155";
	setAttr ".ihi" 0;
createNode groupId -n "pasted__groupId31";
	rename -uid "B0F43661-4AA9-7807-1702-1F988CAB8007";
	setAttr ".ihi" 0;
createNode groupParts -n "pasted__groupParts18";
	rename -uid "7DFEFE43-4E2E-CA4A-8D31-BDABB3DE9827";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode polyCube -n "pasted__pasted__polyCube7";
	rename -uid "C283DB41-4011-FC16-8916-EB9265906A94";
	setAttr ".w" 5;
	setAttr ".h" 4;
	setAttr ".cuv" 4;
createNode groupId -n "pasted__groupId32";
	rename -uid "A4C5175C-4B81-6F98-8967-E48A7F03CD62";
	setAttr ".ihi" 0;
createNode groupId -n "pasted__groupId33";
	rename -uid "6B71E566-4068-B375-6DA5-73BE8791D888";
	setAttr ".ihi" 0;
createNode groupId -n "pasted__groupId34";
	rename -uid "B5D759C0-491F-4872-5D33-54A40B71C99A";
	setAttr ".ihi" 0;
createNode groupId -n "pasted__groupId35";
	rename -uid "04F7FCD8-4F30-7C27-EBE7-52964080EDF4";
	setAttr ".ihi" 0;
createNode groupParts -n "pasted__groupParts27";
	rename -uid "B78E8F11-44E2-BEBA-9318-2CB86110D218";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode polySeparate -n "pasted__polySeparate3";
	rename -uid "7ED52422-45E0-51F4-F870-30A4E1BF01EF";
	setAttr ".ic" 5;
createNode groupParts -n "pasted__groupParts26";
	rename -uid "973BC7BA-4655-15C1-4FC4-198092C80488";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:29]";
createNode polyUnite -n "pasted__polyUnite4";
	rename -uid "BB6B0829-4EA1-9F8B-52DA-EA9CB19031C7";
	setAttr -s 5 ".ip";
	setAttr -s 5 ".im";
createNode groupParts -n "pasted__groupParts21";
	rename -uid "82CA0737-4530-C95E-9DDA-17810AC24781";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode polyCube -n "pasted__polyCube12";
	rename -uid "97BBFC93-4FEC-9695-5046-C3A5F1EB72B2";
	setAttr ".w" 7;
	setAttr ".d" 14;
	setAttr ".cuv" 4;
createNode groupId -n "pasted__groupId36";
	rename -uid "9403FA9F-43C3-0E1E-6A7F-40B51CA2EFA8";
	setAttr ".ihi" 0;
createNode groupId -n "pasted__groupId37";
	rename -uid "475CBAA5-48F9-C6AA-70D1-2B919B463F7C";
	setAttr ".ihi" 0;
createNode groupParts -n "pasted__groupParts22";
	rename -uid "DCA25B1E-45C3-6C9E-3807-059201611F83";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode polyCube -n "pasted__polyCube13";
	rename -uid "68CC4C42-4552-47A8-60C7-F1AF341979A6";
	setAttr ".h" 4;
	setAttr ".d" 14;
	setAttr ".cuv" 4;
createNode groupId -n "pasted__groupId38";
	rename -uid "F1A54944-4906-2765-D78A-B79479510146";
	setAttr ".ihi" 0;
createNode groupId -n "pasted__groupId39";
	rename -uid "90A86132-4253-E25B-94B3-AE8F0931A126";
	setAttr ".ihi" 0;
createNode groupParts -n "pasted__groupParts23";
	rename -uid "14F40BB9-4C0A-4B2E-2C45-298BE8FA0BA1";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode polyCube -n "pasted__pasted__polyCube8";
	rename -uid "BA0E7444-4BF7-9C46-A7E0-ACBAA8EA320D";
	setAttr ".h" 4;
	setAttr ".d" 14;
	setAttr ".cuv" 4;
createNode groupId -n "pasted__groupId40";
	rename -uid "E44FA2DF-495B-F76D-FBF4-7C8D88BF0DC8";
	setAttr ".ihi" 0;
createNode groupId -n "pasted__groupId41";
	rename -uid "7B0A441B-4A19-BC3B-EC1B-E98E7C190053";
	setAttr ".ihi" 0;
createNode groupParts -n "pasted__groupParts24";
	rename -uid "473423BC-4F95-445B-B139-8796278E4CC7";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode polyCube -n "pasted__polyCube14";
	rename -uid "A0EA762A-4017-CE7E-D03E-F48B15149BC4";
	setAttr ".w" 5;
	setAttr ".h" 4;
	setAttr ".cuv" 4;
createNode groupId -n "pasted__groupId42";
	rename -uid "ADEE3DE3-4C8A-5F8A-62B4-A888423C4AB4";
	setAttr ".ihi" 0;
createNode groupId -n "pasted__groupId43";
	rename -uid "BF3DEFD6-472B-3797-5CB0-F8BD30E80778";
	setAttr ".ihi" 0;
createNode groupParts -n "pasted__groupParts25";
	rename -uid "0302A896-43F4-DE41-200A-128589A9DCEB";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode polyCube -n "pasted__pasted__polyCube9";
	rename -uid "BAEC566A-4702-BBF3-F054-C8AB45006086";
	setAttr ".w" 5;
	setAttr ".h" 4;
	setAttr ".cuv" 4;
createNode groupId -n "pasted__groupId44";
	rename -uid "4E74C020-4027-86F5-871C-FEA1E2EC5DC2";
	setAttr ".ihi" 0;
createNode groupId -n "pasted__groupId45";
	rename -uid "1EA063F0-4ECE-7E80-6182-62A4A79B3074";
	setAttr ".ihi" 0;
createNode groupId -n "pasted__groupId46";
	rename -uid "B7DA59D5-4A52-E629-B24F-C8963DE3C278";
	setAttr ".ihi" 0;
createNode groupId -n "pasted__groupId47";
	rename -uid "AF9C81FD-4535-4B5C-FBF6-9DB10E16A47D";
	setAttr ".ihi" 0;
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
	setAttr -s 66 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 60 ".gn";
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
connectAttr "groupParts1.og" "pCubeShape1.i";
connectAttr "groupId1.id" "pCubeShape1.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCubeShape1.iog.og[0].gco";
connectAttr "groupId2.id" "pCubeShape1.ciog.cog[0].cgid";
connectAttr "groupParts2.og" "pCubeShape2.i";
connectAttr "groupId3.id" "pCubeShape2.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCubeShape2.iog.og[0].gco";
connectAttr "groupId4.id" "pCubeShape2.ciog.cog[0].cgid";
connectAttr "groupParts3.og" "|group|pasted__pCube2|transform3|pasted__pCubeShape2.i"
		;
connectAttr "groupId5.id" "|group|pasted__pCube2|transform3|pasted__pCubeShape2.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|group|pasted__pCube2|transform3|pasted__pCubeShape2.iog.og[0].gco"
		;
connectAttr "groupId6.id" "|group|pasted__pCube2|transform3|pasted__pCubeShape2.ciog.cog[0].cgid"
		;
connectAttr "groupParts4.og" "pCubeShape3.i";
connectAttr "groupId7.id" "pCubeShape3.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCubeShape3.iog.og[0].gco";
connectAttr "groupId8.id" "pCubeShape3.ciog.cog[0].cgid";
connectAttr "groupParts5.og" "|group1|pasted__pCube3|transform1|pasted__pCubeShape3.i"
		;
connectAttr "groupId9.id" "|group1|pasted__pCube3|transform1|pasted__pCubeShape3.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|group1|pasted__pCube3|transform1|pasted__pCubeShape3.iog.og[0].gco"
		;
connectAttr "groupId10.id" "|group1|pasted__pCube3|transform1|pasted__pCubeShape3.ciog.cog[0].cgid"
		;
connectAttr "groupParts9.og" "polySurfaceShape3.i";
connectAttr "groupId14.id" "polySurfaceShape3.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape3.iog.og[0].gco";
connectAttr "groupParts11.og" "polySurfaceShape5.i";
connectAttr "groupId16.id" "polySurfaceShape5.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape5.iog.og[0].gco";
connectAttr "groupParts6.og" "pCube4Shape.i";
connectAttr "groupId11.id" "pCube4Shape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCube4Shape.iog.og[0].gco";
connectAttr "pasted__groupParts1.og" "|group2|pasted__pCube1|pasted__transform5|pasted__pCubeShape1.i"
		;
connectAttr "pasted__groupId1.id" "|group2|pasted__pCube1|pasted__transform5|pasted__pCubeShape1.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|group2|pasted__pCube1|pasted__transform5|pasted__pCubeShape1.iog.og[0].gco"
		;
connectAttr "pasted__groupId2.id" "|group2|pasted__pCube1|pasted__transform5|pasted__pCubeShape1.ciog.cog[0].cgid"
		;
connectAttr "pasted__groupParts2.og" "|group2|pasted__pCube2|pasted__transform4|pasted__pCubeShape2.i"
		;
connectAttr "pasted__groupId3.id" "|group2|pasted__pCube2|pasted__transform4|pasted__pCubeShape2.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|group2|pasted__pCube2|pasted__transform4|pasted__pCubeShape2.iog.og[0].gco"
		;
connectAttr "pasted__groupId4.id" "|group2|pasted__pCube2|pasted__transform4|pasted__pCubeShape2.ciog.cog[0].cgid"
		;
connectAttr "pasted__groupParts3.og" "|group2|pasted__group|pasted__pasted__pCube2|pasted__transform3|pasted__pasted__pCubeShape2.i"
		;
connectAttr "pasted__groupId5.id" "|group2|pasted__group|pasted__pasted__pCube2|pasted__transform3|pasted__pasted__pCubeShape2.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|group2|pasted__group|pasted__pasted__pCube2|pasted__transform3|pasted__pasted__pCubeShape2.iog.og[0].gco"
		;
connectAttr "pasted__groupId6.id" "|group2|pasted__group|pasted__pasted__pCube2|pasted__transform3|pasted__pasted__pCubeShape2.ciog.cog[0].cgid"
		;
connectAttr "pasted__groupParts4.og" "|group2|pasted__pCube3|pasted__transform2|pasted__pCubeShape3.i"
		;
connectAttr "pasted__groupId7.id" "|group2|pasted__pCube3|pasted__transform2|pasted__pCubeShape3.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|group2|pasted__pCube3|pasted__transform2|pasted__pCubeShape3.iog.og[0].gco"
		;
connectAttr "pasted__groupId8.id" "|group2|pasted__pCube3|pasted__transform2|pasted__pCubeShape3.ciog.cog[0].cgid"
		;
connectAttr "pasted__groupParts5.og" "|group2|pasted__group1|pasted__pasted__pCube3|pasted__transform1|pasted__pasted__pCubeShape3.i"
		;
connectAttr "pasted__groupId9.id" "|group2|pasted__group1|pasted__pasted__pCube3|pasted__transform1|pasted__pasted__pCubeShape3.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|group2|pasted__group1|pasted__pasted__pCube3|pasted__transform1|pasted__pasted__pCubeShape3.iog.og[0].gco"
		;
connectAttr "pasted__groupId10.id" "|group2|pasted__group1|pasted__pasted__pCube3|pasted__transform1|pasted__pasted__pCubeShape3.ciog.cog[0].cgid"
		;
connectAttr "pasted__groupParts6.og" "|group2|pasted__pCube4|pasted__transform6|pasted__pCube4Shape.i"
		;
connectAttr "pasted__groupId11.id" "|group2|pasted__pCube4|pasted__transform6|pasted__pCube4Shape.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|group2|pasted__pCube4|pasted__transform6|pasted__pCube4Shape.iog.og[0].gco"
		;
connectAttr "pasted__groupParts7.og" "|group3|pasted__pCube1|pasted__transform5|pasted__pCubeShape1.i"
		;
connectAttr "pasted__groupId12.id" "|group3|pasted__pCube1|pasted__transform5|pasted__pCubeShape1.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|group3|pasted__pCube1|pasted__transform5|pasted__pCubeShape1.iog.og[0].gco"
		;
connectAttr "pasted__groupId13.id" "|group3|pasted__pCube1|pasted__transform5|pasted__pCubeShape1.ciog.cog[0].cgid"
		;
connectAttr "pasted__groupParts8.og" "|group3|pasted__pCube2|pasted__transform4|pasted__pCubeShape2.i"
		;
connectAttr "pasted__groupId14.id" "|group3|pasted__pCube2|pasted__transform4|pasted__pCubeShape2.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|group3|pasted__pCube2|pasted__transform4|pasted__pCubeShape2.iog.og[0].gco"
		;
connectAttr "pasted__groupId15.id" "|group3|pasted__pCube2|pasted__transform4|pasted__pCubeShape2.ciog.cog[0].cgid"
		;
connectAttr "pasted__groupParts9.og" "|group3|pasted__group|pasted__pasted__pCube2|pasted__transform3|pasted__pasted__pCubeShape2.i"
		;
connectAttr "pasted__groupId16.id" "|group3|pasted__group|pasted__pasted__pCube2|pasted__transform3|pasted__pasted__pCubeShape2.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|group3|pasted__group|pasted__pasted__pCube2|pasted__transform3|pasted__pasted__pCubeShape2.iog.og[0].gco"
		;
connectAttr "pasted__groupId17.id" "|group3|pasted__group|pasted__pasted__pCube2|pasted__transform3|pasted__pasted__pCubeShape2.ciog.cog[0].cgid"
		;
connectAttr "pasted__groupParts10.og" "|group3|pasted__pCube3|pasted__transform2|pasted__pCubeShape3.i"
		;
connectAttr "pasted__groupId18.id" "|group3|pasted__pCube3|pasted__transform2|pasted__pCubeShape3.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|group3|pasted__pCube3|pasted__transform2|pasted__pCubeShape3.iog.og[0].gco"
		;
connectAttr "pasted__groupId19.id" "|group3|pasted__pCube3|pasted__transform2|pasted__pCubeShape3.ciog.cog[0].cgid"
		;
connectAttr "pasted__groupParts11.og" "|group3|pasted__group1|pasted__pasted__pCube3|pasted__transform1|pasted__pasted__pCubeShape3.i"
		;
connectAttr "pasted__groupId20.id" "|group3|pasted__group1|pasted__pasted__pCube3|pasted__transform1|pasted__pasted__pCubeShape3.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|group3|pasted__group1|pasted__pasted__pCube3|pasted__transform1|pasted__pasted__pCubeShape3.iog.og[0].gco"
		;
connectAttr "pasted__groupId21.id" "|group3|pasted__group1|pasted__pasted__pCube3|pasted__transform1|pasted__pasted__pCubeShape3.ciog.cog[0].cgid"
		;
connectAttr ":initialShadingGroup.mwc" "|group3|pasted__pCube4|pasted__polySurface5|pasted__polySurfaceShape5.iog.og[0].gco"
		;
connectAttr "pasted__groupId23.id" "|group3|pasted__pCube4|pasted__polySurface5|pasted__polySurfaceShape5.iog.og[0].gid"
		;
connectAttr "pasted__groupParts13.og" "|group3|pasted__pCube4|pasted__polySurface5|pasted__polySurfaceShape5.i"
		;
connectAttr "pasted__groupParts12.og" "|group3|pasted__pCube4|pasted__transform6|pasted__pCube4Shape.i"
		;
connectAttr "pasted__groupId22.id" "|group3|pasted__pCube4|pasted__transform6|pasted__pCube4Shape.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|group3|pasted__pCube4|pasted__transform6|pasted__pCube4Shape.iog.og[0].gco"
		;
connectAttr "polyCylinder1.out" "pCylinderShape1.i";
connectAttr "polyCube4.out" "pCubeShape4.i";
connectAttr "pasted__polyCylinder1.out" "pasted__pCylinderShape1.i";
connectAttr "pasted__pasted__polyCylinder1.out" "|group5|pasted__group4|pasted__pasted__pCylinder1|pasted__pasted__pCylinderShape1.i"
		;
connectAttr "pasted__pasted__polyCylinder2.out" "|group6|pasted__group4|pasted__pasted__pCylinder1|pasted__pasted__pCylinderShape1.i"
		;
connectAttr "pasted__pasted__pasted__polyCylinder1.out" "pasted__pasted__pasted__pCylinderShape1.i"
		;
connectAttr "pasted__groupParts14.og" "|group8|pasted__pCube1|pasted__transform5|pasted__pCubeShape1.i"
		;
connectAttr "pasted__groupId24.id" "|group8|pasted__pCube1|pasted__transform5|pasted__pCubeShape1.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|group8|pasted__pCube1|pasted__transform5|pasted__pCubeShape1.iog.og[0].gco"
		;
connectAttr "pasted__groupId25.id" "|group8|pasted__pCube1|pasted__transform5|pasted__pCubeShape1.ciog.cog[0].cgid"
		;
connectAttr "pasted__groupParts15.og" "|group8|pasted__pCube2|pasted__transform4|pasted__pCubeShape2.i"
		;
connectAttr "pasted__groupId26.id" "|group8|pasted__pCube2|pasted__transform4|pasted__pCubeShape2.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|group8|pasted__pCube2|pasted__transform4|pasted__pCubeShape2.iog.og[0].gco"
		;
connectAttr "pasted__groupId27.id" "|group8|pasted__pCube2|pasted__transform4|pasted__pCubeShape2.ciog.cog[0].cgid"
		;
connectAttr "pasted__groupParts16.og" "|group8|pasted__group|pasted__pasted__pCube2|pasted__transform3|pasted__pasted__pCubeShape2.i"
		;
connectAttr "pasted__groupId28.id" "|group8|pasted__group|pasted__pasted__pCube2|pasted__transform3|pasted__pasted__pCubeShape2.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|group8|pasted__group|pasted__pasted__pCube2|pasted__transform3|pasted__pasted__pCubeShape2.iog.og[0].gco"
		;
connectAttr "pasted__groupId29.id" "|group8|pasted__group|pasted__pasted__pCube2|pasted__transform3|pasted__pasted__pCubeShape2.ciog.cog[0].cgid"
		;
connectAttr "pasted__groupParts17.og" "|group8|pasted__pCube3|pasted__transform2|pasted__pCubeShape3.i"
		;
connectAttr "pasted__groupId30.id" "|group8|pasted__pCube3|pasted__transform2|pasted__pCubeShape3.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|group8|pasted__pCube3|pasted__transform2|pasted__pCubeShape3.iog.og[0].gco"
		;
connectAttr "pasted__groupId31.id" "|group8|pasted__pCube3|pasted__transform2|pasted__pCubeShape3.ciog.cog[0].cgid"
		;
connectAttr "pasted__groupParts18.og" "|group8|pasted__group1|pasted__pasted__pCube3|pasted__transform1|pasted__pasted__pCubeShape3.i"
		;
connectAttr "pasted__groupId32.id" "|group8|pasted__group1|pasted__pasted__pCube3|pasted__transform1|pasted__pasted__pCubeShape3.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|group8|pasted__group1|pasted__pasted__pCube3|pasted__transform1|pasted__pasted__pCubeShape3.iog.og[0].gco"
		;
connectAttr "pasted__groupId33.id" "|group8|pasted__group1|pasted__pasted__pCube3|pasted__transform1|pasted__pasted__pCubeShape3.ciog.cog[0].cgid"
		;
connectAttr "pasted__groupParts20.og" "pasted__polySurfaceShape3.i";
connectAttr "pasted__groupId35.id" "pasted__polySurfaceShape3.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pasted__polySurfaceShape3.iog.og[0].gco"
		;
connectAttr "pasted__groupParts19.og" "|group8|pasted__pCube4|pasted__transform6|pasted__pCube4Shape.i"
		;
connectAttr "pasted__groupId34.id" "|group8|pasted__pCube4|pasted__transform6|pasted__pCube4Shape.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|group8|pasted__pCube4|pasted__transform6|pasted__pCube4Shape.iog.og[0].gco"
		;
connectAttr "pasted__groupParts21.og" "|group9|pasted__pCube1|pasted__transform5|pasted__pCubeShape1.i"
		;
connectAttr "pasted__groupId36.id" "|group9|pasted__pCube1|pasted__transform5|pasted__pCubeShape1.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|group9|pasted__pCube1|pasted__transform5|pasted__pCubeShape1.iog.og[0].gco"
		;
connectAttr "pasted__groupId37.id" "|group9|pasted__pCube1|pasted__transform5|pasted__pCubeShape1.ciog.cog[0].cgid"
		;
connectAttr "pasted__groupParts22.og" "|group9|pasted__pCube2|pasted__transform4|pasted__pCubeShape2.i"
		;
connectAttr "pasted__groupId38.id" "|group9|pasted__pCube2|pasted__transform4|pasted__pCubeShape2.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|group9|pasted__pCube2|pasted__transform4|pasted__pCubeShape2.iog.og[0].gco"
		;
connectAttr "pasted__groupId39.id" "|group9|pasted__pCube2|pasted__transform4|pasted__pCubeShape2.ciog.cog[0].cgid"
		;
connectAttr "pasted__groupParts23.og" "|group9|pasted__group|pasted__pasted__pCube2|pasted__transform3|pasted__pasted__pCubeShape2.i"
		;
connectAttr "pasted__groupId40.id" "|group9|pasted__group|pasted__pasted__pCube2|pasted__transform3|pasted__pasted__pCubeShape2.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|group9|pasted__group|pasted__pasted__pCube2|pasted__transform3|pasted__pasted__pCubeShape2.iog.og[0].gco"
		;
connectAttr "pasted__groupId41.id" "|group9|pasted__group|pasted__pasted__pCube2|pasted__transform3|pasted__pasted__pCubeShape2.ciog.cog[0].cgid"
		;
connectAttr "pasted__groupParts24.og" "|group9|pasted__pCube3|pasted__transform2|pasted__pCubeShape3.i"
		;
connectAttr "pasted__groupId42.id" "|group9|pasted__pCube3|pasted__transform2|pasted__pCubeShape3.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|group9|pasted__pCube3|pasted__transform2|pasted__pCubeShape3.iog.og[0].gco"
		;
connectAttr "pasted__groupId43.id" "|group9|pasted__pCube3|pasted__transform2|pasted__pCubeShape3.ciog.cog[0].cgid"
		;
connectAttr "pasted__groupParts25.og" "|group9|pasted__group1|pasted__pasted__pCube3|pasted__transform1|pasted__pasted__pCubeShape3.i"
		;
connectAttr "pasted__groupId44.id" "|group9|pasted__group1|pasted__pasted__pCube3|pasted__transform1|pasted__pasted__pCubeShape3.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|group9|pasted__group1|pasted__pasted__pCube3|pasted__transform1|pasted__pasted__pCubeShape3.iog.og[0].gco"
		;
connectAttr "pasted__groupId45.id" "|group9|pasted__group1|pasted__pasted__pCube3|pasted__transform1|pasted__pasted__pCubeShape3.ciog.cog[0].cgid"
		;
connectAttr "pasted__groupParts27.og" "|group9|pasted__pCube4|pasted__polySurface5|pasted__polySurfaceShape5.i"
		;
connectAttr "pasted__groupId47.id" "|group9|pasted__pCube4|pasted__polySurface5|pasted__polySurfaceShape5.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|group9|pasted__pCube4|pasted__polySurface5|pasted__polySurfaceShape5.iog.og[0].gco"
		;
connectAttr "pasted__groupParts26.og" "|group9|pasted__pCube4|pasted__transform6|pasted__pCube4Shape.i"
		;
connectAttr "pasted__groupId46.id" "|group9|pasted__pCube4|pasted__transform6|pasted__pCube4Shape.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|group9|pasted__pCube4|pasted__transform6|pasted__pCube4Shape.iog.og[0].gco"
		;
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "pCubeShape1.o" "polyUnite1.ip[0]";
connectAttr "pCubeShape2.o" "polyUnite1.ip[1]";
connectAttr "|group|pasted__pCube2|transform3|pasted__pCubeShape2.o" "polyUnite1.ip[2]"
		;
connectAttr "pCubeShape3.o" "polyUnite1.ip[3]";
connectAttr "|group1|pasted__pCube3|transform1|pasted__pCubeShape3.o" "polyUnite1.ip[4]"
		;
connectAttr "pCubeShape1.wm" "polyUnite1.im[0]";
connectAttr "pCubeShape2.wm" "polyUnite1.im[1]";
connectAttr "|group|pasted__pCube2|transform3|pasted__pCubeShape2.wm" "polyUnite1.im[2]"
		;
connectAttr "pCubeShape3.wm" "polyUnite1.im[3]";
connectAttr "|group1|pasted__pCube3|transform1|pasted__pCubeShape3.wm" "polyUnite1.im[4]"
		;
connectAttr "polyCube1.out" "groupParts1.ig";
connectAttr "groupId1.id" "groupParts1.gi";
connectAttr "polyCube2.out" "groupParts2.ig";
connectAttr "groupId3.id" "groupParts2.gi";
connectAttr "pasted__polyCube2.out" "groupParts3.ig";
connectAttr "groupId5.id" "groupParts3.gi";
connectAttr "polyCube3.out" "groupParts4.ig";
connectAttr "groupId7.id" "groupParts4.gi";
connectAttr "pasted__polyCube3.out" "groupParts5.ig";
connectAttr "groupId9.id" "groupParts5.gi";
connectAttr "polyUnite1.out" "groupParts6.ig";
connectAttr "groupId11.id" "groupParts6.gi";
connectAttr "pCube4Shape.o" "polySeparate1.ip";
connectAttr "polySeparate1.out[2]" "groupParts9.ig";
connectAttr "groupId14.id" "groupParts9.gi";
connectAttr "polySeparate1.out[4]" "groupParts11.ig";
connectAttr "groupId16.id" "groupParts11.gi";
connectAttr "pasted__polyUnite1.out" "pasted__groupParts6.ig";
connectAttr "pasted__groupId11.id" "pasted__groupParts6.gi";
connectAttr "|group2|pasted__pCube1|pasted__transform5|pasted__pCubeShape1.o" "pasted__polyUnite1.ip[0]"
		;
connectAttr "|group2|pasted__pCube2|pasted__transform4|pasted__pCubeShape2.o" "pasted__polyUnite1.ip[1]"
		;
connectAttr "|group2|pasted__group|pasted__pasted__pCube2|pasted__transform3|pasted__pasted__pCubeShape2.o" "pasted__polyUnite1.ip[2]"
		;
connectAttr "|group2|pasted__pCube3|pasted__transform2|pasted__pCubeShape3.o" "pasted__polyUnite1.ip[3]"
		;
connectAttr "|group2|pasted__group1|pasted__pasted__pCube3|pasted__transform1|pasted__pasted__pCubeShape3.o" "pasted__polyUnite1.ip[4]"
		;
connectAttr "|group2|pasted__pCube1|pasted__transform5|pasted__pCubeShape1.wm" "pasted__polyUnite1.im[0]"
		;
connectAttr "|group2|pasted__pCube2|pasted__transform4|pasted__pCubeShape2.wm" "pasted__polyUnite1.im[1]"
		;
connectAttr "|group2|pasted__group|pasted__pasted__pCube2|pasted__transform3|pasted__pasted__pCubeShape2.wm" "pasted__polyUnite1.im[2]"
		;
connectAttr "|group2|pasted__pCube3|pasted__transform2|pasted__pCubeShape3.wm" "pasted__polyUnite1.im[3]"
		;
connectAttr "|group2|pasted__group1|pasted__pasted__pCube3|pasted__transform1|pasted__pasted__pCubeShape3.wm" "pasted__polyUnite1.im[4]"
		;
connectAttr "pasted__polyCube1.out" "pasted__groupParts1.ig";
connectAttr "pasted__groupId1.id" "pasted__groupParts1.gi";
connectAttr "pasted__polyCube4.out" "pasted__groupParts2.ig";
connectAttr "pasted__groupId3.id" "pasted__groupParts2.gi";
connectAttr "pasted__pasted__polyCube2.out" "pasted__groupParts3.ig";
connectAttr "pasted__groupId5.id" "pasted__groupParts3.gi";
connectAttr "pasted__polyCube5.out" "pasted__groupParts4.ig";
connectAttr "pasted__groupId7.id" "pasted__groupParts4.gi";
connectAttr "pasted__pasted__polyCube3.out" "pasted__groupParts5.ig";
connectAttr "pasted__groupId9.id" "pasted__groupParts5.gi";
connectAttr "pasted__polySeparate1.out[4]" "pasted__groupParts13.ig";
connectAttr "pasted__groupId23.id" "pasted__groupParts13.gi";
connectAttr "|group3|pasted__pCube4|pasted__transform6|pasted__pCube4Shape.o" "pasted__polySeparate1.ip"
		;
connectAttr "pasted__polyUnite2.out" "pasted__groupParts12.ig";
connectAttr "pasted__groupId22.id" "pasted__groupParts12.gi";
connectAttr "|group3|pasted__pCube1|pasted__transform5|pasted__pCubeShape1.o" "pasted__polyUnite2.ip[0]"
		;
connectAttr "|group3|pasted__pCube2|pasted__transform4|pasted__pCubeShape2.o" "pasted__polyUnite2.ip[1]"
		;
connectAttr "|group3|pasted__group|pasted__pasted__pCube2|pasted__transform3|pasted__pasted__pCubeShape2.o" "pasted__polyUnite2.ip[2]"
		;
connectAttr "|group3|pasted__pCube3|pasted__transform2|pasted__pCubeShape3.o" "pasted__polyUnite2.ip[3]"
		;
connectAttr "|group3|pasted__group1|pasted__pasted__pCube3|pasted__transform1|pasted__pasted__pCubeShape3.o" "pasted__polyUnite2.ip[4]"
		;
connectAttr "|group3|pasted__pCube1|pasted__transform5|pasted__pCubeShape1.wm" "pasted__polyUnite2.im[0]"
		;
connectAttr "|group3|pasted__pCube2|pasted__transform4|pasted__pCubeShape2.wm" "pasted__polyUnite2.im[1]"
		;
connectAttr "|group3|pasted__group|pasted__pasted__pCube2|pasted__transform3|pasted__pasted__pCubeShape2.wm" "pasted__polyUnite2.im[2]"
		;
connectAttr "|group3|pasted__pCube3|pasted__transform2|pasted__pCubeShape3.wm" "pasted__polyUnite2.im[3]"
		;
connectAttr "|group3|pasted__group1|pasted__pasted__pCube3|pasted__transform1|pasted__pasted__pCubeShape3.wm" "pasted__polyUnite2.im[4]"
		;
connectAttr "pasted__polyCube6.out" "pasted__groupParts7.ig";
connectAttr "pasted__groupId12.id" "pasted__groupParts7.gi";
connectAttr "pasted__polyCube7.out" "pasted__groupParts8.ig";
connectAttr "pasted__groupId14.id" "pasted__groupParts8.gi";
connectAttr "pasted__pasted__polyCube4.out" "pasted__groupParts9.ig";
connectAttr "pasted__groupId16.id" "pasted__groupParts9.gi";
connectAttr "pasted__polyCube8.out" "pasted__groupParts10.ig";
connectAttr "pasted__groupId18.id" "pasted__groupParts10.gi";
connectAttr "pasted__pasted__polyCube5.out" "pasted__groupParts11.ig";
connectAttr "pasted__groupId20.id" "pasted__groupParts11.gi";
connectAttr "pasted__polySeparate2.out[2]" "pasted__groupParts20.ig";
connectAttr "pasted__groupId35.id" "pasted__groupParts20.gi";
connectAttr "|group8|pasted__pCube4|pasted__transform6|pasted__pCube4Shape.o" "pasted__polySeparate2.ip"
		;
connectAttr "pasted__polyUnite3.out" "pasted__groupParts19.ig";
connectAttr "pasted__groupId34.id" "pasted__groupParts19.gi";
connectAttr "|group8|pasted__pCube1|pasted__transform5|pasted__pCubeShape1.o" "pasted__polyUnite3.ip[0]"
		;
connectAttr "|group8|pasted__pCube2|pasted__transform4|pasted__pCubeShape2.o" "pasted__polyUnite3.ip[1]"
		;
connectAttr "|group8|pasted__group|pasted__pasted__pCube2|pasted__transform3|pasted__pasted__pCubeShape2.o" "pasted__polyUnite3.ip[2]"
		;
connectAttr "|group8|pasted__pCube3|pasted__transform2|pasted__pCubeShape3.o" "pasted__polyUnite3.ip[3]"
		;
connectAttr "|group8|pasted__group1|pasted__pasted__pCube3|pasted__transform1|pasted__pasted__pCubeShape3.o" "pasted__polyUnite3.ip[4]"
		;
connectAttr "|group8|pasted__pCube1|pasted__transform5|pasted__pCubeShape1.wm" "pasted__polyUnite3.im[0]"
		;
connectAttr "|group8|pasted__pCube2|pasted__transform4|pasted__pCubeShape2.wm" "pasted__polyUnite3.im[1]"
		;
connectAttr "|group8|pasted__group|pasted__pasted__pCube2|pasted__transform3|pasted__pasted__pCubeShape2.wm" "pasted__polyUnite3.im[2]"
		;
connectAttr "|group8|pasted__pCube3|pasted__transform2|pasted__pCubeShape3.wm" "pasted__polyUnite3.im[3]"
		;
connectAttr "|group8|pasted__group1|pasted__pasted__pCube3|pasted__transform1|pasted__pasted__pCubeShape3.wm" "pasted__polyUnite3.im[4]"
		;
connectAttr "pasted__polyCube9.out" "pasted__groupParts14.ig";
connectAttr "pasted__groupId24.id" "pasted__groupParts14.gi";
connectAttr "pasted__polyCube10.out" "pasted__groupParts15.ig";
connectAttr "pasted__groupId26.id" "pasted__groupParts15.gi";
connectAttr "pasted__pasted__polyCube6.out" "pasted__groupParts16.ig";
connectAttr "pasted__groupId28.id" "pasted__groupParts16.gi";
connectAttr "pasted__polyCube11.out" "pasted__groupParts17.ig";
connectAttr "pasted__groupId30.id" "pasted__groupParts17.gi";
connectAttr "pasted__pasted__polyCube7.out" "pasted__groupParts18.ig";
connectAttr "pasted__groupId32.id" "pasted__groupParts18.gi";
connectAttr "pasted__polySeparate3.out[4]" "pasted__groupParts27.ig";
connectAttr "pasted__groupId47.id" "pasted__groupParts27.gi";
connectAttr "|group9|pasted__pCube4|pasted__transform6|pasted__pCube4Shape.o" "pasted__polySeparate3.ip"
		;
connectAttr "pasted__polyUnite4.out" "pasted__groupParts26.ig";
connectAttr "pasted__groupId46.id" "pasted__groupParts26.gi";
connectAttr "|group9|pasted__pCube1|pasted__transform5|pasted__pCubeShape1.o" "pasted__polyUnite4.ip[0]"
		;
connectAttr "|group9|pasted__pCube2|pasted__transform4|pasted__pCubeShape2.o" "pasted__polyUnite4.ip[1]"
		;
connectAttr "|group9|pasted__group|pasted__pasted__pCube2|pasted__transform3|pasted__pasted__pCubeShape2.o" "pasted__polyUnite4.ip[2]"
		;
connectAttr "|group9|pasted__pCube3|pasted__transform2|pasted__pCubeShape3.o" "pasted__polyUnite4.ip[3]"
		;
connectAttr "|group9|pasted__group1|pasted__pasted__pCube3|pasted__transform1|pasted__pasted__pCubeShape3.o" "pasted__polyUnite4.ip[4]"
		;
connectAttr "|group9|pasted__pCube1|pasted__transform5|pasted__pCubeShape1.wm" "pasted__polyUnite4.im[0]"
		;
connectAttr "|group9|pasted__pCube2|pasted__transform4|pasted__pCubeShape2.wm" "pasted__polyUnite4.im[1]"
		;
connectAttr "|group9|pasted__group|pasted__pasted__pCube2|pasted__transform3|pasted__pasted__pCubeShape2.wm" "pasted__polyUnite4.im[2]"
		;
connectAttr "|group9|pasted__pCube3|pasted__transform2|pasted__pCubeShape3.wm" "pasted__polyUnite4.im[3]"
		;
connectAttr "|group9|pasted__group1|pasted__pasted__pCube3|pasted__transform1|pasted__pasted__pCubeShape3.wm" "pasted__polyUnite4.im[4]"
		;
connectAttr "pasted__polyCube12.out" "pasted__groupParts21.ig";
connectAttr "pasted__groupId36.id" "pasted__groupParts21.gi";
connectAttr "pasted__polyCube13.out" "pasted__groupParts22.ig";
connectAttr "pasted__groupId38.id" "pasted__groupParts22.gi";
connectAttr "pasted__pasted__polyCube8.out" "pasted__groupParts23.ig";
connectAttr "pasted__groupId40.id" "pasted__groupParts23.gi";
connectAttr "pasted__polyCube14.out" "pasted__groupParts24.ig";
connectAttr "pasted__groupId42.id" "pasted__groupParts24.gi";
connectAttr "pasted__pasted__polyCube9.out" "pasted__groupParts25.ig";
connectAttr "pasted__groupId44.id" "pasted__groupParts25.gi";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "pCubeShape1.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape1.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape2.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape2.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "|group|pasted__pCube2|transform3|pasted__pCubeShape2.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group|pasted__pCube2|transform3|pasted__pCubeShape2.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "pCubeShape3.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape3.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "|group1|pasted__pCube3|transform1|pasted__pCubeShape3.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group1|pasted__pCube3|transform1|pasted__pCubeShape3.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "pCube4Shape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape3.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape5.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "|group2|pasted__pCube1|pasted__transform5|pasted__pCubeShape1.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group2|pasted__pCube1|pasted__transform5|pasted__pCubeShape1.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group2|pasted__pCube2|pasted__transform4|pasted__pCubeShape2.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group2|pasted__pCube2|pasted__transform4|pasted__pCubeShape2.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group2|pasted__group|pasted__pasted__pCube2|pasted__transform3|pasted__pasted__pCubeShape2.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group2|pasted__group|pasted__pasted__pCube2|pasted__transform3|pasted__pasted__pCubeShape2.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group2|pasted__pCube3|pasted__transform2|pasted__pCubeShape3.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group2|pasted__pCube3|pasted__transform2|pasted__pCubeShape3.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group2|pasted__group1|pasted__pasted__pCube3|pasted__transform1|pasted__pasted__pCubeShape3.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group2|pasted__group1|pasted__pasted__pCube3|pasted__transform1|pasted__pasted__pCubeShape3.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group2|pasted__pCube4|pasted__transform6|pasted__pCube4Shape.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group3|pasted__pCube1|pasted__transform5|pasted__pCubeShape1.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group3|pasted__pCube1|pasted__transform5|pasted__pCubeShape1.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group3|pasted__pCube2|pasted__transform4|pasted__pCubeShape2.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group3|pasted__pCube2|pasted__transform4|pasted__pCubeShape2.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group3|pasted__group|pasted__pasted__pCube2|pasted__transform3|pasted__pasted__pCubeShape2.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group3|pasted__group|pasted__pasted__pCube2|pasted__transform3|pasted__pasted__pCubeShape2.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group3|pasted__pCube3|pasted__transform2|pasted__pCubeShape3.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group3|pasted__pCube3|pasted__transform2|pasted__pCubeShape3.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group3|pasted__group1|pasted__pasted__pCube3|pasted__transform1|pasted__pasted__pCubeShape3.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group3|pasted__group1|pasted__pasted__pCube3|pasted__transform1|pasted__pasted__pCubeShape3.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group3|pasted__pCube4|pasted__transform6|pasted__pCube4Shape.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group3|pasted__pCube4|pasted__polySurface5|pasted__polySurfaceShape5.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "pCylinderShape1.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape4.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pasted__pCylinderShape1.iog" ":initialShadingGroup.dsm" -na;
connectAttr "|group5|pasted__group4|pasted__pasted__pCylinder1|pasted__pasted__pCylinderShape1.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group6|pasted__group4|pasted__pasted__pCylinder1|pasted__pasted__pCylinderShape1.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "pasted__pasted__pasted__pCylinderShape1.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group8|pasted__pCube1|pasted__transform5|pasted__pCubeShape1.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group8|pasted__pCube1|pasted__transform5|pasted__pCubeShape1.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group8|pasted__pCube2|pasted__transform4|pasted__pCubeShape2.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group8|pasted__pCube2|pasted__transform4|pasted__pCubeShape2.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group8|pasted__group|pasted__pasted__pCube2|pasted__transform3|pasted__pasted__pCubeShape2.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group8|pasted__group|pasted__pasted__pCube2|pasted__transform3|pasted__pasted__pCubeShape2.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group8|pasted__pCube3|pasted__transform2|pasted__pCubeShape3.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group8|pasted__pCube3|pasted__transform2|pasted__pCubeShape3.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group8|pasted__group1|pasted__pasted__pCube3|pasted__transform1|pasted__pasted__pCubeShape3.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group8|pasted__group1|pasted__pasted__pCube3|pasted__transform1|pasted__pasted__pCubeShape3.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group8|pasted__pCube4|pasted__transform6|pasted__pCube4Shape.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "pasted__polySurfaceShape3.iog.og[0]" ":initialShadingGroup.dsm" -na
		;
connectAttr "|group9|pasted__pCube1|pasted__transform5|pasted__pCubeShape1.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group9|pasted__pCube1|pasted__transform5|pasted__pCubeShape1.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group9|pasted__pCube2|pasted__transform4|pasted__pCubeShape2.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group9|pasted__pCube2|pasted__transform4|pasted__pCubeShape2.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group9|pasted__group|pasted__pasted__pCube2|pasted__transform3|pasted__pasted__pCubeShape2.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group9|pasted__group|pasted__pasted__pCube2|pasted__transform3|pasted__pasted__pCubeShape2.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group9|pasted__pCube3|pasted__transform2|pasted__pCubeShape3.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group9|pasted__pCube3|pasted__transform2|pasted__pCubeShape3.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group9|pasted__group1|pasted__pasted__pCube3|pasted__transform1|pasted__pasted__pCubeShape3.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group9|pasted__group1|pasted__pasted__pCube3|pasted__transform1|pasted__pasted__pCubeShape3.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group9|pasted__pCube4|pasted__transform6|pasted__pCube4Shape.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group9|pasted__pCube4|pasted__polySurface5|pasted__polySurfaceShape5.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "groupId1.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId3.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId4.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId5.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId6.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId7.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId8.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId9.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId10.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId11.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId14.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId16.msg" ":initialShadingGroup.gn" -na;
connectAttr "pasted__groupId1.msg" ":initialShadingGroup.gn" -na;
connectAttr "pasted__groupId2.msg" ":initialShadingGroup.gn" -na;
connectAttr "pasted__groupId3.msg" ":initialShadingGroup.gn" -na;
connectAttr "pasted__groupId4.msg" ":initialShadingGroup.gn" -na;
connectAttr "pasted__groupId5.msg" ":initialShadingGroup.gn" -na;
connectAttr "pasted__groupId6.msg" ":initialShadingGroup.gn" -na;
connectAttr "pasted__groupId7.msg" ":initialShadingGroup.gn" -na;
connectAttr "pasted__groupId8.msg" ":initialShadingGroup.gn" -na;
connectAttr "pasted__groupId9.msg" ":initialShadingGroup.gn" -na;
connectAttr "pasted__groupId10.msg" ":initialShadingGroup.gn" -na;
connectAttr "pasted__groupId11.msg" ":initialShadingGroup.gn" -na;
connectAttr "pasted__groupId12.msg" ":initialShadingGroup.gn" -na;
connectAttr "pasted__groupId13.msg" ":initialShadingGroup.gn" -na;
connectAttr "pasted__groupId14.msg" ":initialShadingGroup.gn" -na;
connectAttr "pasted__groupId15.msg" ":initialShadingGroup.gn" -na;
connectAttr "pasted__groupId16.msg" ":initialShadingGroup.gn" -na;
connectAttr "pasted__groupId17.msg" ":initialShadingGroup.gn" -na;
connectAttr "pasted__groupId18.msg" ":initialShadingGroup.gn" -na;
connectAttr "pasted__groupId19.msg" ":initialShadingGroup.gn" -na;
connectAttr "pasted__groupId20.msg" ":initialShadingGroup.gn" -na;
connectAttr "pasted__groupId21.msg" ":initialShadingGroup.gn" -na;
connectAttr "pasted__groupId22.msg" ":initialShadingGroup.gn" -na;
connectAttr "pasted__groupId23.msg" ":initialShadingGroup.gn" -na;
connectAttr "pasted__groupId24.msg" ":initialShadingGroup.gn" -na;
connectAttr "pasted__groupId25.msg" ":initialShadingGroup.gn" -na;
connectAttr "pasted__groupId26.msg" ":initialShadingGroup.gn" -na;
connectAttr "pasted__groupId27.msg" ":initialShadingGroup.gn" -na;
connectAttr "pasted__groupId28.msg" ":initialShadingGroup.gn" -na;
connectAttr "pasted__groupId29.msg" ":initialShadingGroup.gn" -na;
connectAttr "pasted__groupId30.msg" ":initialShadingGroup.gn" -na;
connectAttr "pasted__groupId31.msg" ":initialShadingGroup.gn" -na;
connectAttr "pasted__groupId32.msg" ":initialShadingGroup.gn" -na;
connectAttr "pasted__groupId33.msg" ":initialShadingGroup.gn" -na;
connectAttr "pasted__groupId34.msg" ":initialShadingGroup.gn" -na;
connectAttr "pasted__groupId35.msg" ":initialShadingGroup.gn" -na;
connectAttr "pasted__groupId36.msg" ":initialShadingGroup.gn" -na;
connectAttr "pasted__groupId37.msg" ":initialShadingGroup.gn" -na;
connectAttr "pasted__groupId38.msg" ":initialShadingGroup.gn" -na;
connectAttr "pasted__groupId39.msg" ":initialShadingGroup.gn" -na;
connectAttr "pasted__groupId40.msg" ":initialShadingGroup.gn" -na;
connectAttr "pasted__groupId41.msg" ":initialShadingGroup.gn" -na;
connectAttr "pasted__groupId42.msg" ":initialShadingGroup.gn" -na;
connectAttr "pasted__groupId43.msg" ":initialShadingGroup.gn" -na;
connectAttr "pasted__groupId44.msg" ":initialShadingGroup.gn" -na;
connectAttr "pasted__groupId45.msg" ":initialShadingGroup.gn" -na;
connectAttr "pasted__groupId46.msg" ":initialShadingGroup.gn" -na;
connectAttr "pasted__groupId47.msg" ":initialShadingGroup.gn" -na;
// End of tub.ma
