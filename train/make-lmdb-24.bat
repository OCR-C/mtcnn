@echo off

title ����ǵ�һ��ִ�У����Ƚ�ѹyzm-easy.rarȻ����ִ��

set tips_info=0
if exist train_lmdb24 set tips_info=1

if %tips_info% == 1 (
    echo ȷ��Ҫ���������������ɾ������Ŀ¼�ģ�����ֹ������Ѻò����״�����ɾ������
    pause
)


if exist train_lmdb24 rd /q /s train_lmdb24

rem ���Ҫ���ͼ��ߴ�ģ����磬���ԼӲ���--resize_width=224 --resize_height=224
rem ���Ҫ������ͼ��Ū�ɵ�ͨ���Ҷ�ͼ�����ԼӲ���--gray=true

echo ����ѵ�����ݿ�train_lmdb24...
"F:\research\1.CCDL\CCDL\caffe-easy\windows-gpu\caffe\../../Build/gpu_cuda8.0/Release/x64/convert_imageset.exe" "" 24/label-train.txt train_lmdb24 --backend=mtcnn --shuffle=true
echo LMDB���ݿⴴ����ϡ�
pause