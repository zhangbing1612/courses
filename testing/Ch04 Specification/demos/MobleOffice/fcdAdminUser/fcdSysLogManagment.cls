VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior  = 0  'vbNone
  MTSTransactionMode  = 0  'NotAnMTSObject
END
Attribute VB_Name = "fcdSysLogManagment"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = True
Attribute VB_Ext_KEY = "RVB_UniqueId" ,"3DAFBD9B0039"
Attribute VB_Ext_KEY = "RVB_ModelStereotype" ,"Class Module"
Option Explicit

'�������ŷ��͵���ʷ��¼��


'�õ�ĳ��ʱ��ε�ϵͳ��־��
'������
'startTime: date
'��ʼʱ��
'endTime: date
'��ֹʱ��
'return: recordset
'����ϵͳ��־��¼��
'##ModelId=3DABFE0100A5
Public Function GetSysLogByTime(startTime As Date, endTime As Date) As Recordset
    Dim objMngr As MainBusiness.HistoryManager
    Set objMngr = CreateObject("MainBusiness.HistoryManager")
    Set GetSysLogByTime = objMngr.GetSysLogByTime(startTime, endTime)
    Set objMngr = Nothing
    
End Function