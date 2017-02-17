.class public final enum Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseType;
.super Ljava/lang/Enum;
.source "Protobuf.java"

# interfaces
.implements Lcom/google/protobuf/ProtocolMessageEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ResponseType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseType;",
        ">;",
        "Lcom/google/protobuf/ProtocolMessageEnum;"
    }
.end annotation


# static fields
.field public static final enum BOUND:Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseType;

.field public static final BOUND_VALUE:I = 0x2

.field public static final enum DEVICE_LIST:Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseType;

.field public static final DEVICE_LIST_VALUE:I = 0x4

.field private static final synthetic ENUM$VALUES:[Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseType;

.field public static final enum PONG:Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseType;

.field public static final PONG_VALUE:I = 0x1

.field public static final enum SESSION_ID:Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseType;

.field public static final SESSION_ID_VALUE:I = 0x5

.field public static final enum SESSION_LIST:Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseType;

.field public static final SESSION_LIST_VALUE:I = 0x6

.field public static final enum UNBOUND:Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseType;

.field public static final UNBOUND_VALUE:I = 0x3

.field private static final VALUES:[Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseType;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final index:I

.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 6874
    new-instance v0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseType;

    const-string v1, "PONG"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseType;->PONG:Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseType;

    .line 6875
    new-instance v0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseType;

    const-string v1, "BOUND"

    invoke-direct {v0, v1, v4, v4, v5}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseType;->BOUND:Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseType;

    .line 6876
    new-instance v0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseType;

    const-string v1, "UNBOUND"

    invoke-direct {v0, v1, v5, v5, v6}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseType;->UNBOUND:Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseType;

    .line 6877
    new-instance v0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseType;

    const-string v1, "DEVICE_LIST"

    invoke-direct {v0, v1, v6, v6, v7}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseType;->DEVICE_LIST:Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseType;

    .line 6878
    new-instance v0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseType;

    const-string v1, "SESSION_ID"

    invoke-direct {v0, v1, v7, v7, v8}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseType;->SESSION_ID:Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseType;

    .line 6879
    new-instance v0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseType;

    const-string v1, "SESSION_LIST"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v8, v8, v2}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseType;->SESSION_LIST:Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseType;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseType;

    const/4 v1, 0x0

    sget-object v2, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseType;->PONG:Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseType;

    aput-object v2, v0, v1

    sget-object v1, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseType;->BOUND:Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseType;->UNBOUND:Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseType;->DEVICE_LIST:Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseType;->SESSION_ID:Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseType;->SESSION_LIST:Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseType;

    aput-object v1, v0, v8

    sput-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseType;->ENUM$VALUES:[Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseType;

    .line 6910
    new-instance v0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseType$1;

    invoke-direct {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseType$1;-><init>()V

    .line 6909
    sput-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    .line 6929
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseType;

    const/4 v1, 0x0

    .line 6930
    sget-object v2, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseType;->PONG:Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseType;

    aput-object v2, v0, v1

    sget-object v1, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseType;->BOUND:Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseType;->UNBOUND:Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseType;->DEVICE_LIST:Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseType;->SESSION_ID:Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseType;->SESSION_LIST:Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseType;

    aput-object v1, v0, v8

    .line 6929
    sput-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseType;->VALUES:[Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseType;

    .line 6931
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .param p3, "index"    # I
    .param p4, "value"    # I

    .prologue
    .line 6945
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 6946
    iput p3, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseType;->index:I

    .line 6947
    iput p4, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseType;->value:I

    .line 6948
    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 2

    .prologue
    .line 6926
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

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
            "Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 6906
    sget-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseType;
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 6893
    packed-switch p0, :pswitch_data_0

    .line 6900
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 6894
    :pswitch_0
    sget-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseType;->PONG:Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseType;

    goto :goto_0

    .line 6895
    :pswitch_1
    sget-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseType;->BOUND:Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseType;

    goto :goto_0

    .line 6896
    :pswitch_2
    sget-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseType;->UNBOUND:Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseType;

    goto :goto_0

    .line 6897
    :pswitch_3
    sget-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseType;->DEVICE_LIST:Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseType;

    goto :goto_0

    .line 6898
    :pswitch_4
    sget-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseType;->SESSION_ID:Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseType;

    goto :goto_0

    .line 6899
    :pswitch_5
    sget-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseType;->SESSION_LIST:Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseType;

    goto :goto_0

    .line 6893
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static valueOf(Lcom/google/protobuf/Descriptors$EnumValueDescriptor;)Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseType;
    .locals 2
    .param p0, "desc"    # Lcom/google/protobuf/Descriptors$EnumValueDescriptor;

    .prologue
    .line 6935
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getType()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseType;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 6936
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 6937
    const-string v1, "EnumValueDescriptor is not for this type."

    .line 6936
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6939
    :cond_0
    sget-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseType;->VALUES:[Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseType;

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getIndex()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseType;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseType;

    return-object v0
.end method

.method public static values()[Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseType;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseType;->ENUM$VALUES:[Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseType;

    array-length v1, v0

    new-array v2, v1, [Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 1

    .prologue
    .line 6922
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseType;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getNumber()I
    .locals 1

    .prologue
    .line 6890
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseType;->value:I

    return v0
.end method

.method public final getValueDescriptor()Lcom/google/protobuf/Descriptors$EnumValueDescriptor;
    .locals 2

    .prologue
    .line 6918
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseType;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$EnumDescriptor;->getValues()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseType;->index:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;

    return-object v0
.end method
