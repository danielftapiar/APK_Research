.class public final enum Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$RequestType;
.super Ljava/lang/Enum;
.source "Protobuf.java"

# interfaces
.implements Lcom/google/protobuf/ProtocolMessageEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RequestType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$RequestType;",
        ">;",
        "Lcom/google/protobuf/ProtocolMessageEnum;"
    }
.end annotation


# static fields
.field public static final enum BIND_DEVICE:Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$RequestType;

.field public static final BIND_DEVICE_VALUE:I = 0x2

.field private static final synthetic ENUM$VALUES:[Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$RequestType;

.field public static final enum LIST_DEVICES:Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$RequestType;

.field public static final LIST_DEVICES_VALUE:I = 0x4

.field public static final enum LIST_SESSIONS:Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$RequestType;

.field public static final LIST_SESSIONS_VALUE:I = 0x8

.field public static final enum PING:Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$RequestType;

.field public static final PING_VALUE:I = 0x1

.field public static final enum RESTART_SESSION:Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$RequestType;

.field public static final RESTART_SESSION_VALUE:I = 0x7

.field public static final enum START_SESSION:Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$RequestType;

.field public static final START_SESSION_VALUE:I = 0x5

.field public static final enum STOP_SESSION:Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$RequestType;

.field public static final STOP_SESSION_VALUE:I = 0x6

.field public static final enum UNBIND_DEVICE:Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$RequestType;

.field public static final UNBIND_DEVICE_VALUE:I = 0x3

.field private static final VALUES:[Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$RequestType;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$RequestType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final index:I

.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x5

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 5915
    new-instance v0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$RequestType;

    const-string v1, "PING"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$RequestType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$RequestType;->PING:Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$RequestType;

    .line 5916
    new-instance v0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$RequestType;

    const-string v1, "BIND_DEVICE"

    invoke-direct {v0, v1, v5, v5, v6}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$RequestType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$RequestType;->BIND_DEVICE:Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$RequestType;

    .line 5917
    new-instance v0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$RequestType;

    const-string v1, "UNBIND_DEVICE"

    invoke-direct {v0, v1, v6, v6, v7}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$RequestType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$RequestType;->UNBIND_DEVICE:Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$RequestType;

    .line 5918
    new-instance v0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$RequestType;

    const-string v1, "LIST_DEVICES"

    invoke-direct {v0, v1, v7, v7, v8}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$RequestType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$RequestType;->LIST_DEVICES:Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$RequestType;

    .line 5919
    new-instance v0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$RequestType;

    const-string v1, "START_SESSION"

    invoke-direct {v0, v1, v8, v8, v9}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$RequestType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$RequestType;->START_SESSION:Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$RequestType;

    .line 5920
    new-instance v0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$RequestType;

    const-string v1, "STOP_SESSION"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v9, v9, v2}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$RequestType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$RequestType;->STOP_SESSION:Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$RequestType;

    .line 5921
    new-instance v0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$RequestType;

    const-string v1, "RESTART_SESSION"

    const/4 v2, 0x6

    const/4 v3, 0x6

    const/4 v4, 0x7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$RequestType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$RequestType;->RESTART_SESSION:Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$RequestType;

    .line 5922
    new-instance v0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$RequestType;

    const-string v1, "LIST_SESSIONS"

    const/4 v2, 0x7

    const/4 v3, 0x7

    const/16 v4, 0x8

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$RequestType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$RequestType;->LIST_SESSIONS:Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$RequestType;

    const/16 v0, 0x8

    new-array v0, v0, [Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$RequestType;

    const/4 v1, 0x0

    sget-object v2, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$RequestType;->PING:Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$RequestType;

    aput-object v2, v0, v1

    sget-object v1, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$RequestType;->BIND_DEVICE:Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$RequestType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$RequestType;->UNBIND_DEVICE:Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$RequestType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$RequestType;->LIST_DEVICES:Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$RequestType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$RequestType;->START_SESSION:Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$RequestType;

    aput-object v1, v0, v8

    sget-object v1, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$RequestType;->STOP_SESSION:Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$RequestType;

    aput-object v1, v0, v9

    const/4 v1, 0x6

    sget-object v2, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$RequestType;->RESTART_SESSION:Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$RequestType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$RequestType;->LIST_SESSIONS:Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$RequestType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$RequestType;->ENUM$VALUES:[Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$RequestType;

    .line 5957
    new-instance v0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$RequestType$1;

    invoke-direct {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$RequestType$1;-><init>()V

    .line 5956
    sput-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$RequestType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    .line 5976
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$RequestType;

    const/4 v1, 0x0

    .line 5977
    sget-object v2, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$RequestType;->PING:Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$RequestType;

    aput-object v2, v0, v1

    sget-object v1, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$RequestType;->BIND_DEVICE:Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$RequestType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$RequestType;->UNBIND_DEVICE:Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$RequestType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$RequestType;->LIST_DEVICES:Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$RequestType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$RequestType;->START_SESSION:Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$RequestType;

    aput-object v1, v0, v8

    sget-object v1, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$RequestType;->STOP_SESSION:Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$RequestType;

    aput-object v1, v0, v9

    const/4 v1, 0x6

    sget-object v2, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$RequestType;->RESTART_SESSION:Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$RequestType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$RequestType;->LIST_SESSIONS:Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$RequestType;

    aput-object v2, v0, v1

    .line 5976
    sput-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$RequestType;->VALUES:[Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$RequestType;

    .line 5978
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .param p3, "index"    # I
    .param p4, "value"    # I

    .prologue
    .line 5992
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 5993
    iput p3, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$RequestType;->index:I

    .line 5994
    iput p4, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$RequestType;->value:I

    .line 5995
    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 2

    .prologue
    .line 5973
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$Descriptor;->getEnumTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$EnumDescriptor;

    return-object v0
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$EnumLiteMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$RequestType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5953
    sget-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$RequestType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$RequestType;
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 5938
    packed-switch p0, :pswitch_data_0

    .line 5947
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 5939
    :pswitch_0
    sget-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$RequestType;->PING:Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$RequestType;

    goto :goto_0

    .line 5940
    :pswitch_1
    sget-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$RequestType;->BIND_DEVICE:Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$RequestType;

    goto :goto_0

    .line 5941
    :pswitch_2
    sget-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$RequestType;->UNBIND_DEVICE:Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$RequestType;

    goto :goto_0

    .line 5942
    :pswitch_3
    sget-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$RequestType;->LIST_DEVICES:Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$RequestType;

    goto :goto_0

    .line 5943
    :pswitch_4
    sget-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$RequestType;->START_SESSION:Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$RequestType;

    goto :goto_0

    .line 5944
    :pswitch_5
    sget-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$RequestType;->STOP_SESSION:Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$RequestType;

    goto :goto_0

    .line 5945
    :pswitch_6
    sget-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$RequestType;->RESTART_SESSION:Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$RequestType;

    goto :goto_0

    .line 5946
    :pswitch_7
    sget-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$RequestType;->LIST_SESSIONS:Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$RequestType;

    goto :goto_0

    .line 5938
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public static valueOf(Lcom/google/protobuf/Descriptors$EnumValueDescriptor;)Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$RequestType;
    .locals 2
    .param p0, "desc"    # Lcom/google/protobuf/Descriptors$EnumValueDescriptor;

    .prologue
    .line 5982
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getType()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$RequestType;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 5983
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 5984
    const-string v1, "EnumValueDescriptor is not for this type."

    .line 5983
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5986
    :cond_0
    sget-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$RequestType;->VALUES:[Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$RequestType;

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getIndex()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$RequestType;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$RequestType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$RequestType;

    return-object v0
.end method

.method public static values()[Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$RequestType;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$RequestType;->ENUM$VALUES:[Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$RequestType;

    array-length v1, v0

    new-array v2, v1, [Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$RequestType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 1

    .prologue
    .line 5969
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$RequestType;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getNumber()I
    .locals 1

    .prologue
    .line 5935
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$RequestType;->value:I

    return v0
.end method

.method public final getValueDescriptor()Lcom/google/protobuf/Descriptors$EnumValueDescriptor;
    .locals 2

    .prologue
    .line 5965
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$RequestType;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$EnumDescriptor;->getValues()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$RequestType;->index:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;

    return-object v0
.end method
