#<center>NuOne Encoder Tools</center>
####<center>MUABAOBAO Embedded Tool</center>
####<center>2016.6.23</center>

## Environment Setup
1. Microsoft Visual C++ 2010 Redistributable Package (x86)

## Usage：
1. Wav -> Nuo encoder
    + nuocodec.bat *File Directory* *para*  
    + File Directory: include wav files (default: ./)
    + para: Bit per sample, 0.8~2.0, step 0.1(default: 1.5) 

2. Nuo -> Rom converter
    + temperary support single nuo file converting

## Develop Notice:
### NuoEncPrj
1. Essential DLLs : NuOneXCodecDll.dll , TVAUDIOENODER.dll  
2. SDK: Visual Studio 2015 (support MFC)
3. Option for Project:
    + 常规 -> MFC的使用：在静态库中使用MFC  
    + 常规 -> 字符集：使用多字节字符集  
    + C/C++ -> 预处理器 -> 预处理器定义：modify "_MFC" to "_UNICODE"
4. Run m.bat to build
    + b: build
    + r: rebuild
    + c: clean

### Nuo2RomPrj
1. SDK: Visual Studio 2015 (support MFC)
2. Option for Project:
    + 常规 -> MFC的使用：在静态库中使用MFC  

