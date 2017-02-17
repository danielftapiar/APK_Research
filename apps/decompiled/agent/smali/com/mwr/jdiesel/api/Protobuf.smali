.class public final Lcom/mwr/jdiesel/api/Protobuf;
.super Ljava/lang/Object;
.source "Protobuf.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mwr/jdiesel/api/Protobuf$Message;,
        Lcom/mwr/jdiesel/api/Protobuf$MessageOrBuilder;
    }
.end annotation


# static fields
.field private static descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

.field private static internal_static_com_mwr_jdiesel_api_Message_Agent_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_com_mwr_jdiesel_api_Message_Agent_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_com_mwr_jdiesel_api_Message_Argument_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_com_mwr_jdiesel_api_Message_Argument_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_com_mwr_jdiesel_api_Message_Array_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_com_mwr_jdiesel_api_Message_Array_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_com_mwr_jdiesel_api_Message_Device_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_com_mwr_jdiesel_api_Message_Device_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_com_mwr_jdiesel_api_Message_ObjectReference_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_com_mwr_jdiesel_api_Message_ObjectReference_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_com_mwr_jdiesel_api_Message_Primitive_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_com_mwr_jdiesel_api_Message_Primitive_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_com_mwr_jdiesel_api_Message_ReflectionRequest_Construct_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_com_mwr_jdiesel_api_Message_ReflectionRequest_Construct_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_com_mwr_jdiesel_api_Message_ReflectionRequest_Delete_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_com_mwr_jdiesel_api_Message_ReflectionRequest_Delete_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_com_mwr_jdiesel_api_Message_ReflectionRequest_GetProperty_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_com_mwr_jdiesel_api_Message_ReflectionRequest_GetProperty_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_com_mwr_jdiesel_api_Message_ReflectionRequest_Invoke_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_com_mwr_jdiesel_api_Message_ReflectionRequest_Invoke_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_com_mwr_jdiesel_api_Message_ReflectionRequest_Resolve_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_com_mwr_jdiesel_api_Message_ReflectionRequest_Resolve_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_com_mwr_jdiesel_api_Message_ReflectionRequest_SetProperty_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_com_mwr_jdiesel_api_Message_ReflectionRequest_SetProperty_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_com_mwr_jdiesel_api_Message_ReflectionRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_com_mwr_jdiesel_api_Message_ReflectionRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_com_mwr_jdiesel_api_Message_ReflectionResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_com_mwr_jdiesel_api_Message_ReflectionResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_com_mwr_jdiesel_api_Message_Session_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_com_mwr_jdiesel_api_Message_Session_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_com_mwr_jdiesel_api_Message_SystemRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_com_mwr_jdiesel_api_Message_SystemRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_com_mwr_jdiesel_api_Message_SystemResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_com_mwr_jdiesel_api_Message_SystemResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_com_mwr_jdiesel_api_Message_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_com_mwr_jdiesel_api_Message_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 14024
    const/16 v2, 0xb

    new-array v1, v2, [Ljava/lang/String;

    .line 14025
    const-string v2, "\n\u0015common/protobuf.proto\u0012\u0013com.mwr.jdiesel.api\"\u00bb\u001f\n\u0007Message\u0012\n\n\u0002id\u0018\u0001 \u0002(\u0005\u00126\n\u0004type\u0018\u0002 \u0002(\u000e2(.com.mwr.jdiesel.api.Message.MessageType\u0012B\n\u000esystem_request\u0018\u0005 \u0001(\u000b2*.com.mwr.jdiesel.api.Message.SystemRequest\u0012D\n\u000fsystem_response\u0018\u0006 \u0001(\u000b2+.com.mwr.jdiesel.api.Message.SystemResponse\u0012J\n\u0012reflection_request\u0018\u0007 \u0001(\u000b2..com.mwr.jdiesel.api.Message.ReflectionRequest\u0012L\n\u0013reflection_response\u0018\u0008 \u0001(\u000b2/.com.mwr.jdiesel.api.Message.Re"

    aput-object v2, v1, v4

    const/4 v2, 0x1

    .line 14035
    const-string v3, "flectionResponse\u001a\u00a2\n\n\u0011ReflectionRequest\u0012\u0012\n\nsession_id\u0018\u0001 \u0002(\t\u0012H\n\u0004type\u0018\u0002 \u0002(\u000e2:.com.mwr.jdiesel.api.Message.ReflectionRequest.RequestType\u0012G\n\u0007resolve\u0018\u0003 \u0001(\u000b26.com.mwr.jdiesel.api.Message.ReflectionRequest.Resolve\u0012K\n\tconstruct\u0018\u0004 \u0001(\u000b28.com.mwr.jdiesel.api.Message.ReflectionRequest.Construct\u0012E\n\u0006invoke\u0018\u0005 \u0001(\u000b25.com.mwr.jdiesel.api.Message.ReflectionRequest.Invoke\u0012P\n\u000cset_property\u0018\u0006 \u0001(\u000b2:.com.mwr.jdiesel.api.Me"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    .line 14045
    const-string v3, "ssage.ReflectionRequest.SetProperty\u0012P\n\u000cget_property\u0018\u0007 \u0001(\u000b2:.com.mwr.jdiesel.api.Message.ReflectionRequest.GetProperty\u0012E\n\u0006delete\u0018\u0008 \u0001(\u000b25.com.mwr.jdiesel.api.Message.ReflectionRequest.Delete\u001a\u001c\n\u0007Resolve\u0012\u0011\n\tclassname\u0018\u0001 \u0001(\t\u001a\u0082\u0001\n\tConstruct\u0012<\n\u0006object\u0018\u0001 \u0001(\u000b2,.com.mwr.jdiesel.api.Message.ObjectReference\u00127\n\u0008argument\u0018\u0002 \u0003(\u000b2%.com.mwr.jdiesel.api.Message.Argument\u001a\u008f\u0001\n\u0006Invoke\u0012<\n\u0006object\u0018\u0001 \u0001(\u000b2,.com.mwr.jdiesel.api"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    .line 14055
    const-string v3, ".Message.ObjectReference\u0012\u000e\n\u0006method\u0018\u0002 \u0001(\t\u00127\n\u0008argument\u0018\u0003 \u0003(\u000b2%.com.mwr.jdiesel.api.Message.Argument\u001a\u0093\u0001\n\u000bSetProperty\u0012<\n\u0006object\u0018\u0001 \u0001(\u000b2,.com.mwr.jdiesel.api.Message.ObjectReference\u0012\u0010\n\u0008property\u0018\u0002 \u0001(\t\u00124\n\u0005value\u0018\u0003 \u0001(\u000b2%.com.mwr.jdiesel.api.Message.Argument\u001a]\n\u000bGetProperty\u0012<\n\u0006object\u0018\u0001 \u0001(\u000b2,.com.mwr.jdiesel.api.Message.ObjectReference\u0012\u0010\n\u0008property\u0018\u0002 \u0001(\t\u001aF\n\u0006Delete\u0012<\n\u0006object\u0018\u0001 \u0001(\u000b2,.com.mwr.jdiesel.api.Message.O"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    .line 14065
    const-string v3, "bjectReference\"u\n\u000bRequestType\u0012\u000b\n\u0007RESOLVE\u0010\u0001\u0012\r\n\tCONSTRUCT\u0010\u0002\u0012\n\n\u0006INVOKE\u0010\u0003\u0012\u0010\n\u000cSET_PROPERTY\u0010\u0004\u0012\u0010\n\u000cGET_PROPERTY\u0010\u0005\u0012\n\n\u0006DELETE\u0010\u0006\u0012\u000e\n\nDELETE_ALL\u0010\u0007\u001a\u00fa\u0001\n\u0012ReflectionResponse\u0012\u0012\n\nsession_id\u0018\u0001 \u0002(\t\u0012N\n\u0006status\u0018\u0002 \u0002(\u000e2>.com.mwr.jdiesel.api.Message.ReflectionResponse.ResponseStatus\u00125\n\u0006result\u0018\u0003 \u0001(\u000b2%.com.mwr.jdiesel.api.Message.Argument\u0012\u0014\n\u000cerrormessage\u0018\u0008 \u0001(\t\"3\n\u000eResponseStatus\u0012\u000b\n\u0007SUCCESS\u0010\u0001\u0012\t\n\u0005ERROR\u0010\u0002\u0012\t\n\u0005FATAL\u0010\u0003\u001a\u0086\u0003\n\rSystemReq"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    .line 14075
    const-string v3, "uest\u0012J\n\u0004type\u0018\u0001 \u0002(\u000e26.com.mwr.jdiesel.api.Message.SystemRequest.RequestType:\u0004PING\u00123\n\u0006device\u0018\u0005 \u0001(\u000b2#.com.mwr.jdiesel.api.Message.Device\u00121\n\u0005agent\u0018\u0006 \u0001(\u000b2\".com.mwr.jdiesel.api.Message.Agent\u0012\u0012\n\nsession_id\u0018\u0007 \u0001(\t\u0012\u0010\n\u0008password\u0018\u0008 \u0001(\t\"\u009a\u0001\n\u000bRequestType\u0012\u0008\n\u0004PING\u0010\u0001\u0012\u000f\n\u000bBIND_DEVICE\u0010\u0002\u0012\u0011\n\rUNBIND_DEVICE\u0010\u0003\u0012\u0010\n\u000cLIST_DEVICES\u0010\u0004\u0012\u0011\n\rSTART_SESSION\u0010\u0005\u0012\u0010\n\u000cSTOP_SESSION\u0010\u0006\u0012\u0013\n\u000fRESTART_SESSION\u0010\u0007\u0012\u0011\n\rLIST_SESSIONS\u0010\u0008\u001a\u00ff\u0003\n\u000eSystemResponse\u0012F"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    .line 14085
    const-string v3, "\n\u0004type\u0018\u0001 \u0002(\u000e28.com.mwr.jdiesel.api.Message.SystemResponse.ResponseType\u0012J\n\u0006status\u0018\u0002 \u0002(\u000e2:.com.mwr.jdiesel.api.Message.SystemResponse.ResponseStatus\u00124\n\u0007devices\u0018\u0006 \u0003(\u000b2#.com.mwr.jdiesel.api.Message.Device\u00121\n\u0005agent\u0018\n \u0001(\u000b2\".com.mwr.jdiesel.api.Message.Agent\u0012\u0012\n\nsession_id\u0018\u0007 \u0001(\t\u0012\u0015\n\rerror_message\u0018\u0008 \u0001(\t\u00126\n\u0008sessions\u0018\t \u0003(\u000b2$.com.mwr.jdiesel.api.Message.Session\"c\n\u000cResponseType\u0012\u0008\n\u0004PONG\u0010\u0001\u0012\t\n\u0005BOUND\u0010\u0002\u0012\u000b\n\u0007UNBOUND\u0010\u0003"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    .line 14095
    const-string v3, "\u0012\u000f\n\u000bDEVICE_LIST\u0010\u0004\u0012\u000e\n\nSESSION_ID\u0010\u0005\u0012\u0010\n\u000cSESSION_LIST\u0010\u0006\"(\n\u000eResponseStatus\u0012\u000b\n\u0007SUCCESS\u0010\u0001\u0012\t\n\u0005ERROR\u0010\u0002\u001a\u00f4\u0002\n\u0008Argument\u0012H\n\u0004type\u0018\u0001 \u0002(\u000e22.com.mwr.jdiesel.api.Message.Argument.ArgumentType:\u0006STRING\u00129\n\tprimitive\u0018\u0002 \u0001(\u000b2&.com.mwr.jdiesel.api.Message.Primitive\u0012\u000e\n\u0006string\u0018\u0003 \u0001(\t\u0012<\n\u0006object\u0018\u0004 \u0001(\u000b2,.com.mwr.jdiesel.api.Message.ObjectReference\u00121\n\u0005array\u0018\u0005 \u0001(\u000b2\".com.mwr.jdiesel.api.Message.Array\u0012\u000c\n\u0004data\u0018\u0006 \u0001(\u000c\"T\n\u000cArgumentType\u0012\u0008"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    .line 14105
    const-string v3, "\n\u0004NULL\u0010\u0001\u0012\r\n\tPRIMITIVE\u0010\u0002\u0012\n\n\u0006STRING\u0010\u0003\u0012\n\n\u0006OBJECT\u0010\u0004\u0012\t\n\u0005ARRAY\u0010\u0005\u0012\u0008\n\u0004DATA\u0010\u0006\u001a\u00c2\u0001\n\u0005Array\u0012B\n\u0004type\u0018\u0001 \u0002(\u000e2,.com.mwr.jdiesel.api.Message.Array.ArrayType:\u0006STRING\u00126\n\u0007element\u0018\u0002 \u0003(\u000b2%.com.mwr.jdiesel.api.Message.Argument\"=\n\tArrayType\u0012\r\n\tPRIMITIVE\u0010\u0001\u0012\n\n\u0006STRING\u0010\u0002\u0012\n\n\u0006OBJECT\u0010\u0003\u0012\t\n\u0005ARRAY\u0010\u0004\u001aK\n\u0006Device\u0012\n\n\u0002id\u0018\u0001 \u0002(\t\u0012\u0014\n\u000cmanufacturer\u0018\u0002 \u0002(\t\u0012\r\n\u0005model\u0018\u0003 \u0002(\t\u0012\u0010\n\u0008software\u0018\u0004 \u0002(\t\u001a0\n\u0005Agent\u0012\u0010\n\u0008pkg_name\u0018\u0001 \u0002(\t\u0012\u0015\n\ragent_version\u0018\u0002 \u0002(\t\u001a$\n\u000fObje"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    .line 14115
    const-string v3, "ctReference\u0012\u0011\n\treference\u0018\u0001 \u0001(\u0005\u001a\u00a6\u0002\n\tPrimitive\u0012B\n\u0004type\u0018\u0001 \u0002(\u000e24.com.mwr.jdiesel.api.Message.Primitive.PrimitiveType\u0012\u000c\n\u0004bool\u0018\u0002 \u0001(\u0008\u0012\u000b\n\u0003int\u0018\u0003 \u0001(\u0005\u0012\u000c\n\u0004long\u0018\u0004 \u0001(\u0003\u0012\r\n\u0005float\u0018\u0005 \u0001(\u0002\u0012\u000c\n\u0004byte\u0018\u0006 \u0001(\u0005\u0012\r\n\u0005short\u0018\u0007 \u0001(\u0005\u0012\u000e\n\u0006double\u0018\u0008 \u0001(\u0001\u0012\u000c\n\u0004char\u0018\t \u0001(\u0005\"b\n\rPrimitiveType\u0012\u0008\n\u0004BOOL\u0010\u0001\u0012\u0007\n\u0003INT\u0010\u0002\u0012\u0008\n\u0004LONG\u0010\u0003\u0012\t\n\u0005FLOAT\u0010\u0004\u0012\u0008\n\u0004BYTE\u0010\u0005\u0012\t\n\u0005SHORT\u0010\u0006\u0012\n\n\u0006DOUBLE\u0010\u0007\u0012\u0008\n\u0004CHAR\u0010\u0008\u001a(\n\u0007Session\u0012\n\n\u0002id\u0018\u0001 \u0002(\t\u0012\u0011\n\tdevice_id\u0018\u0002 \u0002(\t\"g\n\u000bMessageType\u0012\u0012\n\u000eSYSTEM_REQUE"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    .line 14125
    const-string v3, "ST\u0010\u0001\u0012\u0013\n\u000fSYSTEM_RESPONSE\u0010\u0002\u0012\u0016\n\u0012REFLECTION_REQUEST\u0010\u0003\u0012\u0017\n\u0013REFLECTION_RESPONSE\u0010\u0004B\u0002H\u0001"

    aput-object v3, v1, v2

    .line 14129
    .local v1, "descriptorData":[Ljava/lang/String;
    new-instance v0, Lcom/mwr/jdiesel/api/Protobuf$1;

    invoke-direct {v0}, Lcom/mwr/jdiesel/api/Protobuf$1;-><init>()V

    .line 14282
    .local v0, "assigner":Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;
    new-array v2, v4, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 14281
    invoke-static {v1, v2, v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->internalBuildGeneratedFileFrom([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;)V

    .line 14284
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/google/protobuf/Descriptors$FileDescriptor;)V
    .locals 0

    .prologue
    .line 14022
    sput-object p0, Lcom/mwr/jdiesel/api/Protobuf;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-void
.end method

.method static synthetic access$1(Lcom/google/protobuf/Descriptors$Descriptor;)V
    .locals 0

    .prologue
    .line 13927
    sput-object p0, Lcom/mwr/jdiesel/api/Protobuf;->internal_static_com_mwr_jdiesel_api_Message_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-void
.end method

.method static synthetic access$10(Lcom/google/protobuf/Descriptors$Descriptor;)V
    .locals 0

    .prologue
    .line 13942
    sput-object p0, Lcom/mwr/jdiesel/api/Protobuf;->internal_static_com_mwr_jdiesel_api_Message_ReflectionRequest_Construct_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-void
.end method

.method static synthetic access$11()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 13942
    sget-object v0, Lcom/mwr/jdiesel/api/Protobuf;->internal_static_com_mwr_jdiesel_api_Message_ReflectionRequest_Construct_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$12(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)V
    .locals 0

    .prologue
    .line 13945
    sput-object p0, Lcom/mwr/jdiesel/api/Protobuf;->internal_static_com_mwr_jdiesel_api_Message_ReflectionRequest_Construct_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-void
.end method

.method static synthetic access$13(Lcom/google/protobuf/Descriptors$Descriptor;)V
    .locals 0

    .prologue
    .line 13947
    sput-object p0, Lcom/mwr/jdiesel/api/Protobuf;->internal_static_com_mwr_jdiesel_api_Message_ReflectionRequest_Invoke_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-void
.end method

.method static synthetic access$14()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 13947
    sget-object v0, Lcom/mwr/jdiesel/api/Protobuf;->internal_static_com_mwr_jdiesel_api_Message_ReflectionRequest_Invoke_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$15(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)V
    .locals 0

    .prologue
    .line 13950
    sput-object p0, Lcom/mwr/jdiesel/api/Protobuf;->internal_static_com_mwr_jdiesel_api_Message_ReflectionRequest_Invoke_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-void
.end method

.method static synthetic access$16(Lcom/google/protobuf/Descriptors$Descriptor;)V
    .locals 0

    .prologue
    .line 13952
    sput-object p0, Lcom/mwr/jdiesel/api/Protobuf;->internal_static_com_mwr_jdiesel_api_Message_ReflectionRequest_SetProperty_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-void
.end method

.method static synthetic access$17()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 13952
    sget-object v0, Lcom/mwr/jdiesel/api/Protobuf;->internal_static_com_mwr_jdiesel_api_Message_ReflectionRequest_SetProperty_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$18(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)V
    .locals 0

    .prologue
    .line 13955
    sput-object p0, Lcom/mwr/jdiesel/api/Protobuf;->internal_static_com_mwr_jdiesel_api_Message_ReflectionRequest_SetProperty_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-void
.end method

.method static synthetic access$19(Lcom/google/protobuf/Descriptors$Descriptor;)V
    .locals 0

    .prologue
    .line 13957
    sput-object p0, Lcom/mwr/jdiesel/api/Protobuf;->internal_static_com_mwr_jdiesel_api_Message_ReflectionRequest_GetProperty_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-void
.end method

.method static synthetic access$2()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 13927
    sget-object v0, Lcom/mwr/jdiesel/api/Protobuf;->internal_static_com_mwr_jdiesel_api_Message_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$20()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 13957
    sget-object v0, Lcom/mwr/jdiesel/api/Protobuf;->internal_static_com_mwr_jdiesel_api_Message_ReflectionRequest_GetProperty_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$21(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)V
    .locals 0

    .prologue
    .line 13960
    sput-object p0, Lcom/mwr/jdiesel/api/Protobuf;->internal_static_com_mwr_jdiesel_api_Message_ReflectionRequest_GetProperty_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-void
.end method

.method static synthetic access$22(Lcom/google/protobuf/Descriptors$Descriptor;)V
    .locals 0

    .prologue
    .line 13962
    sput-object p0, Lcom/mwr/jdiesel/api/Protobuf;->internal_static_com_mwr_jdiesel_api_Message_ReflectionRequest_Delete_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-void
.end method

.method static synthetic access$23()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 13962
    sget-object v0, Lcom/mwr/jdiesel/api/Protobuf;->internal_static_com_mwr_jdiesel_api_Message_ReflectionRequest_Delete_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$24(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)V
    .locals 0

    .prologue
    .line 13965
    sput-object p0, Lcom/mwr/jdiesel/api/Protobuf;->internal_static_com_mwr_jdiesel_api_Message_ReflectionRequest_Delete_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-void
.end method

.method static synthetic access$25(Lcom/google/protobuf/Descriptors$Descriptor;)V
    .locals 0

    .prologue
    .line 13967
    sput-object p0, Lcom/mwr/jdiesel/api/Protobuf;->internal_static_com_mwr_jdiesel_api_Message_ReflectionResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-void
.end method

.method static synthetic access$26()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 13967
    sget-object v0, Lcom/mwr/jdiesel/api/Protobuf;->internal_static_com_mwr_jdiesel_api_Message_ReflectionResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$27(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)V
    .locals 0

    .prologue
    .line 13970
    sput-object p0, Lcom/mwr/jdiesel/api/Protobuf;->internal_static_com_mwr_jdiesel_api_Message_ReflectionResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-void
.end method

.method static synthetic access$28(Lcom/google/protobuf/Descriptors$Descriptor;)V
    .locals 0

    .prologue
    .line 13972
    sput-object p0, Lcom/mwr/jdiesel/api/Protobuf;->internal_static_com_mwr_jdiesel_api_Message_SystemRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-void
.end method

.method static synthetic access$29()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 13972
    sget-object v0, Lcom/mwr/jdiesel/api/Protobuf;->internal_static_com_mwr_jdiesel_api_Message_SystemRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$3(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)V
    .locals 0

    .prologue
    .line 13930
    sput-object p0, Lcom/mwr/jdiesel/api/Protobuf;->internal_static_com_mwr_jdiesel_api_Message_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-void
.end method

.method static synthetic access$30(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)V
    .locals 0

    .prologue
    .line 13975
    sput-object p0, Lcom/mwr/jdiesel/api/Protobuf;->internal_static_com_mwr_jdiesel_api_Message_SystemRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-void
.end method

.method static synthetic access$31(Lcom/google/protobuf/Descriptors$Descriptor;)V
    .locals 0

    .prologue
    .line 13977
    sput-object p0, Lcom/mwr/jdiesel/api/Protobuf;->internal_static_com_mwr_jdiesel_api_Message_SystemResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-void
.end method

.method static synthetic access$32()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 13977
    sget-object v0, Lcom/mwr/jdiesel/api/Protobuf;->internal_static_com_mwr_jdiesel_api_Message_SystemResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$33(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)V
    .locals 0

    .prologue
    .line 13980
    sput-object p0, Lcom/mwr/jdiesel/api/Protobuf;->internal_static_com_mwr_jdiesel_api_Message_SystemResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-void
.end method

.method static synthetic access$34(Lcom/google/protobuf/Descriptors$Descriptor;)V
    .locals 0

    .prologue
    .line 13982
    sput-object p0, Lcom/mwr/jdiesel/api/Protobuf;->internal_static_com_mwr_jdiesel_api_Message_Argument_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-void
.end method

.method static synthetic access$35()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 13982
    sget-object v0, Lcom/mwr/jdiesel/api/Protobuf;->internal_static_com_mwr_jdiesel_api_Message_Argument_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$36(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)V
    .locals 0

    .prologue
    .line 13985
    sput-object p0, Lcom/mwr/jdiesel/api/Protobuf;->internal_static_com_mwr_jdiesel_api_Message_Argument_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-void
.end method

.method static synthetic access$37(Lcom/google/protobuf/Descriptors$Descriptor;)V
    .locals 0

    .prologue
    .line 13987
    sput-object p0, Lcom/mwr/jdiesel/api/Protobuf;->internal_static_com_mwr_jdiesel_api_Message_Array_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-void
.end method

.method static synthetic access$38()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 13987
    sget-object v0, Lcom/mwr/jdiesel/api/Protobuf;->internal_static_com_mwr_jdiesel_api_Message_Array_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$39(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)V
    .locals 0

    .prologue
    .line 13990
    sput-object p0, Lcom/mwr/jdiesel/api/Protobuf;->internal_static_com_mwr_jdiesel_api_Message_Array_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-void
.end method

.method static synthetic access$4(Lcom/google/protobuf/Descriptors$Descriptor;)V
    .locals 0

    .prologue
    .line 13932
    sput-object p0, Lcom/mwr/jdiesel/api/Protobuf;->internal_static_com_mwr_jdiesel_api_Message_ReflectionRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-void
.end method

.method static synthetic access$40(Lcom/google/protobuf/Descriptors$Descriptor;)V
    .locals 0

    .prologue
    .line 13992
    sput-object p0, Lcom/mwr/jdiesel/api/Protobuf;->internal_static_com_mwr_jdiesel_api_Message_Device_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-void
.end method

.method static synthetic access$41()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 13992
    sget-object v0, Lcom/mwr/jdiesel/api/Protobuf;->internal_static_com_mwr_jdiesel_api_Message_Device_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$42(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)V
    .locals 0

    .prologue
    .line 13995
    sput-object p0, Lcom/mwr/jdiesel/api/Protobuf;->internal_static_com_mwr_jdiesel_api_Message_Device_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-void
.end method

.method static synthetic access$43(Lcom/google/protobuf/Descriptors$Descriptor;)V
    .locals 0

    .prologue
    .line 13997
    sput-object p0, Lcom/mwr/jdiesel/api/Protobuf;->internal_static_com_mwr_jdiesel_api_Message_Agent_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-void
.end method

.method static synthetic access$44()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 13997
    sget-object v0, Lcom/mwr/jdiesel/api/Protobuf;->internal_static_com_mwr_jdiesel_api_Message_Agent_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$45(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)V
    .locals 0

    .prologue
    .line 14000
    sput-object p0, Lcom/mwr/jdiesel/api/Protobuf;->internal_static_com_mwr_jdiesel_api_Message_Agent_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-void
.end method

.method static synthetic access$46(Lcom/google/protobuf/Descriptors$Descriptor;)V
    .locals 0

    .prologue
    .line 14002
    sput-object p0, Lcom/mwr/jdiesel/api/Protobuf;->internal_static_com_mwr_jdiesel_api_Message_ObjectReference_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-void
.end method

.method static synthetic access$47()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 14002
    sget-object v0, Lcom/mwr/jdiesel/api/Protobuf;->internal_static_com_mwr_jdiesel_api_Message_ObjectReference_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$48(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)V
    .locals 0

    .prologue
    .line 14005
    sput-object p0, Lcom/mwr/jdiesel/api/Protobuf;->internal_static_com_mwr_jdiesel_api_Message_ObjectReference_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-void
.end method

.method static synthetic access$49(Lcom/google/protobuf/Descriptors$Descriptor;)V
    .locals 0

    .prologue
    .line 14007
    sput-object p0, Lcom/mwr/jdiesel/api/Protobuf;->internal_static_com_mwr_jdiesel_api_Message_Primitive_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-void
.end method

.method static synthetic access$5()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 13932
    sget-object v0, Lcom/mwr/jdiesel/api/Protobuf;->internal_static_com_mwr_jdiesel_api_Message_ReflectionRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$50()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 14007
    sget-object v0, Lcom/mwr/jdiesel/api/Protobuf;->internal_static_com_mwr_jdiesel_api_Message_Primitive_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$51(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)V
    .locals 0

    .prologue
    .line 14010
    sput-object p0, Lcom/mwr/jdiesel/api/Protobuf;->internal_static_com_mwr_jdiesel_api_Message_Primitive_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-void
.end method

.method static synthetic access$52(Lcom/google/protobuf/Descriptors$Descriptor;)V
    .locals 0

    .prologue
    .line 14012
    sput-object p0, Lcom/mwr/jdiesel/api/Protobuf;->internal_static_com_mwr_jdiesel_api_Message_Session_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-void
.end method

.method static synthetic access$53()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 14012
    sget-object v0, Lcom/mwr/jdiesel/api/Protobuf;->internal_static_com_mwr_jdiesel_api_Message_Session_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$54(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)V
    .locals 0

    .prologue
    .line 14015
    sput-object p0, Lcom/mwr/jdiesel/api/Protobuf;->internal_static_com_mwr_jdiesel_api_Message_Session_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-void
.end method

.method static synthetic access$55()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 13940
    sget-object v0, Lcom/mwr/jdiesel/api/Protobuf;->internal_static_com_mwr_jdiesel_api_Message_ReflectionRequest_Resolve_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$56()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 13945
    sget-object v0, Lcom/mwr/jdiesel/api/Protobuf;->internal_static_com_mwr_jdiesel_api_Message_ReflectionRequest_Construct_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$57()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 13950
    sget-object v0, Lcom/mwr/jdiesel/api/Protobuf;->internal_static_com_mwr_jdiesel_api_Message_ReflectionRequest_Invoke_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$58()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 13955
    sget-object v0, Lcom/mwr/jdiesel/api/Protobuf;->internal_static_com_mwr_jdiesel_api_Message_ReflectionRequest_SetProperty_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$59()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 13960
    sget-object v0, Lcom/mwr/jdiesel/api/Protobuf;->internal_static_com_mwr_jdiesel_api_Message_ReflectionRequest_GetProperty_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$6(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)V
    .locals 0

    .prologue
    .line 13935
    sput-object p0, Lcom/mwr/jdiesel/api/Protobuf;->internal_static_com_mwr_jdiesel_api_Message_ReflectionRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-void
.end method

.method static synthetic access$60()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 13965
    sget-object v0, Lcom/mwr/jdiesel/api/Protobuf;->internal_static_com_mwr_jdiesel_api_Message_ReflectionRequest_Delete_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$61()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 13935
    sget-object v0, Lcom/mwr/jdiesel/api/Protobuf;->internal_static_com_mwr_jdiesel_api_Message_ReflectionRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$62()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 13970
    sget-object v0, Lcom/mwr/jdiesel/api/Protobuf;->internal_static_com_mwr_jdiesel_api_Message_ReflectionResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$63()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 13975
    sget-object v0, Lcom/mwr/jdiesel/api/Protobuf;->internal_static_com_mwr_jdiesel_api_Message_SystemRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$64()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 13980
    sget-object v0, Lcom/mwr/jdiesel/api/Protobuf;->internal_static_com_mwr_jdiesel_api_Message_SystemResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$65()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 13985
    sget-object v0, Lcom/mwr/jdiesel/api/Protobuf;->internal_static_com_mwr_jdiesel_api_Message_Argument_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$66()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 13990
    sget-object v0, Lcom/mwr/jdiesel/api/Protobuf;->internal_static_com_mwr_jdiesel_api_Message_Array_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$67()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 13995
    sget-object v0, Lcom/mwr/jdiesel/api/Protobuf;->internal_static_com_mwr_jdiesel_api_Message_Device_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$68()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 14000
    sget-object v0, Lcom/mwr/jdiesel/api/Protobuf;->internal_static_com_mwr_jdiesel_api_Message_Agent_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$69()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 14005
    sget-object v0, Lcom/mwr/jdiesel/api/Protobuf;->internal_static_com_mwr_jdiesel_api_Message_ObjectReference_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$7(Lcom/google/protobuf/Descriptors$Descriptor;)V
    .locals 0

    .prologue
    .line 13937
    sput-object p0, Lcom/mwr/jdiesel/api/Protobuf;->internal_static_com_mwr_jdiesel_api_Message_ReflectionRequest_Resolve_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-void
.end method

.method static synthetic access$70()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 14010
    sget-object v0, Lcom/mwr/jdiesel/api/Protobuf;->internal_static_com_mwr_jdiesel_api_Message_Primitive_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$71()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 14015
    sget-object v0, Lcom/mwr/jdiesel/api/Protobuf;->internal_static_com_mwr_jdiesel_api_Message_Session_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$72()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 13930
    sget-object v0, Lcom/mwr/jdiesel/api/Protobuf;->internal_static_com_mwr_jdiesel_api_Message_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$8()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 13937
    sget-object v0, Lcom/mwr/jdiesel/api/Protobuf;->internal_static_com_mwr_jdiesel_api_Message_ReflectionRequest_Resolve_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$9(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)V
    .locals 0

    .prologue
    .line 13940
    sput-object p0, Lcom/mwr/jdiesel/api/Protobuf;->internal_static_com_mwr_jdiesel_api_Message_ReflectionRequest_Resolve_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-void
.end method

.method public static getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    .prologue
    .line 14019
    sget-object v0, Lcom/mwr/jdiesel/api/Protobuf;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method

.method public static registerAllExtensions(Lcom/google/protobuf/ExtensionRegistry;)V
    .locals 0
    .param p0, "registry"    # Lcom/google/protobuf/ExtensionRegistry;

    .prologue
    .line 10
    return-void
.end method
