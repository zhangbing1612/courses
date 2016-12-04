VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior  = 0  'vbNone
  MTSTransactionMode  = 0  'NotAnMTSObject
END
Attribute VB_Name = "fcdContactListMaint"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = True
Attribute VB_Ext_KEY = "RVB_UniqueId" ,"3DA924A4014E"
Attribute VB_Ext_KEY = "RVB_ModelStereotype" ,"Class Module"
Option Explicit


'ά���û��ĸ���ͨѶ¼��


'������ϵ�˵� ID �õ�ָ����¼��
'������
'ID: long
'Return: Recordset
'���ؿռ�¼��
'##ModelId=3DB45E4201E5
Public Function GetContactsByID(ID As Long) As Recordset
    Dim objMngr As MainBusInterface.IMaintData
    Set objMngr = CreateObject("MainBusiness.ContactManager")
    Set GetContactsByID = objMngr.GetListByID(ID)
    Set objMngr = Nothing
    
End Function


'����ͨѶ��� ID �õ�ָ����¼��
'������
'ID: long
'Return: Recordset
'���ؿռ�¼��
'##ModelId=3DB45E770240
Public Function GetGroupByID(ID As Long) As Recordset
    Dim objMngr As MainBusInterface.IMaintData
    Set objMngr = CreateObject("MainBusiness.GroupManager")
    Set GetGroupByID = objMngr.GetListByID(ID)
    Set objMngr = Nothing
    
End Function


'�õ�һ���յ���ϵ�ˡ�
'������
'Return: Recordset
'���ؿռ�¼��
'##ModelId=3DAC29D4037D
Public Function GetEmptyContact() As Recordset
    Dim objMngr As MainBusInterface.IMaintData
    Set objMngr = CreateObject("MainBusiness.ContactManager")
    Set GetEmptyContact = objMngr.GetEmpty()
    Set objMngr = Nothing
    
End Function


'�õ�һ���յ�ͨ���顣
'������
'Return: Recordset
'���ش˿ռ�¼��
'##ModelId=3DAC2A1E02BD
Public Function GetEmptyGroup() As Recordset
    Dim objMngr As MainBusInterface.IMaintData
    Set objMngr = CreateObject("MainBusiness.GroupManager")
    Set GetEmptyGroup = objMngr.GetEmpty()
    Set objMngr = Nothing
    
End Function


'ɾ��һ����ϵ�ˡ�
'������
'ID: Long
'ɾ����ϵ�˵�ID��
'##ModelId=3DAC2A9701BB
Public Sub DeleteContact(ID As Long)
    Dim objMngr As MainBusInterface.IMaintData
    Set objMngr = CreateObject("MainBusiness.ContactManager")
    objMngr.Delete ID
    Set objMngr = Nothing
    
End Sub


'ɾ��һ��ͨ���顣
'������
'ID: Long
'ɾ�����ID��
'##ModelId=3DAC2AF6025C
Public Sub DeleteGroup(ID As Long)
    Dim objMngr As MainBusInterface.IMaintData
    Set objMngr = CreateObject("MainBusiness.GroupManager")
    objMngr.Delete ID
    Set objMngr = Nothing
    
End Sub


'������Ĺ�����ϵ���б���
'������
'rs: Recordset
'���ĺ��������ϵ�˼�¼��
'##ModelId=3DAC2B48019E
Public Sub SaveContacts(rs As Recordset)
    Dim objMngr As MainBusInterface.IMaintData
    Set objMngr = CreateObject("MainBusiness.ContactManager")
    objMngr.Save rs
    Set objMngr = Nothing
    
End Sub


'������Ĺ���ͨ������Ϣ��
'������
'rs: Recordset
'���ĺ������ͨ�����¼��
'##ModelId=3DAC2B700129
Public Sub SaveGroups(rs As Recordset)
    Dim objMngr As MainBusInterface.IMaintData
    Set objMngr = CreateObject("MainBusiness.GroupManager")
    objMngr.Save rs
    Set objMngr = Nothing
    
End Sub


'�õ�ĳ�û���������ϵ�ˡ�
'������
'UserID: Long
'��¼�û���ID��
'Return: Recordset
'���ش��û���������ϵ�˵ļ�¼��
'##ModelId=3DAC292401E3
Public Function GetContacts(UserID As Long) As Recordset
    Dim objMngr As MainBusInterface.IMaintData
    Set objMngr = CreateObject("MainBusiness.ContactManager")
    Set GetContacts = objMngr.GetListByUserID(UserID)
    Set objMngr = Nothing
    
End Function


'�õ�ĳ�û�������ͨ���顣
'������
'UserID: Long
'��¼�û���ID��
'Return: Recordset
'���ش��û�������ͨ����ļ�¼��
'##ModelId=3DAC292402FB
Public Function GetGroups(UserID As Long) As Recordset
    Dim objMngr As MainBusInterface.IMaintData
    Set objMngr = CreateObject("MainBusiness.GroupManager")
    Set GetGroups = objMngr.GetListByUserID(UserID)
    Set objMngr = Nothing
    
End Function