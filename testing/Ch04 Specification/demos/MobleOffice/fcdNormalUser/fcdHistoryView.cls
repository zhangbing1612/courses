VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior  = 0  'vbNone
  MTSTransactionMode  = 0  'NotAnMTSObject
END
Attribute VB_Name = "fcdHistoryView"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = True
Attribute VB_Ext_KEY = "RVB_UniqueId" ,"3DABFBBC01CA"
Attribute VB_Ext_KEY = "RVB_ModelStereotype" ,"Class Module"
Option Explicit

'���������û����͵���ʷ���ݡ�


'�õ�ĳ���û�ĳһ��ʱ��ķ�����ʷ��¼��
'������
'StartTime: string
'��ʼʱ��
'EndTime: string
'����ʱ��
'UserID: long
'�û���ID��
'return: Recordset
'�����û��鿴��ʱ��εķ�����ʷ��¼��
'##ModelId=3DAD5F6101A3
Public Function GetHistory(StartTime As String, EndTime As String, UserID As Long) As Recordset
    Dim objMngr As MainBusiness.HistoryManager
    Set objMngr = CreateObject("MainBusiness.HistoryManager")
    Set GetHistory = objMngr.GetHistory(StartTime, EndTime, UserID)
    Set objMngr = Nothing
    
End Function