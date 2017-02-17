.class public final enum Lcom/mwr/jdiesel/api/Protobuf$Message$MessageType;
.super Ljava/lang/Enum;
.source "Protobuf.java"

# interfaces
.implements Lcom/google/protobuf/ProtocolMessageEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mwr/jdiesel/api/Protobuf$Message;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MessageType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/mwr/jdiesel/api/Protobuf$Message$MessageType;",
        ">;",
        "Lcom/google/protobuf/ProtocolMessageEnum;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/mwr/jdiesel/api/Protobuf$Message$MessageType;

.field public static final enum REFLECTION_REQUEST:Lcom/mwr/jdiesel/api/Protobuf$Message$MessageType;

.field public static final REFLECTION_REQUEST_VALUE:I = 0x3

.field public static final enum REFLECTION_RESPONSE:Lcom/mwr/jdiesel/api/Protobuf$Message$MessageType;

.field public static final REFLECTION_RESPONSE_VALUE:I = 0x4

.field public static final enum SYSTEM_REQUEST:Lcom/mwr/jdiesel/api/Protobuf$Message$MessageType;

.field public static final SYSTEM_REQUEST_VALUE:I = 0x1

.field public static final enum SYSTEM_RESPONSE:Lcom/mwr/jdiesel/api/Protobuf$Message$MessageType;

.field public static final SYSTEM_RESPONSE_VALUE:I = 0x2

.field private static final VALUES:[Lcom/mwr/jdiesel/api/Protobuf$Message$MessageType;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/mwr/jdiesel/api/Protobuf$Message$MessageType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final index:I

.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x0

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 72
    new-instance v0, Lcom/mwr/jdiesel/api/Protobuf$Message$MessageType;

    const-string v1, "SYSTEM_REQUEST"

    invoke-direct {v0, v1, v5, v5, v2}, Lcom/mwr/jdiesel/api/Protobuf$Message$MessageType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$MessageType;->SYSTEM_REQUEST:Lcom/mwr/jdiesel/api/Protobuf$Message$MessageType;

    .line 73
    new-instance v0, Lcom/mwr/jdiesel/api/Protobuf$Message$MessageType;

    const-string v1, "SYSTEM_RESPONSE"

    invoke-direct {v0, v1, v2, v2, v3}, Lcom/mwr/jdiesel/api/Protobuf$Message$MessageType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$MessageType;->SYSTEM_RESPONSE:Lcom/mwr/jdiesel/api/Protobuf$Message$MessageType;

    .line 74
    new-instance v0, Lcom/mwr/jdiesel/api/Protobuf$Message$MessageType;

    const-string v1, "REFLECTION_REQUEST"

    invoke-direct {v0, v1, v3, v3, v4}, Lcom/mwr/jdiesel/api/Protobuf$Message$MessageType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$MessageType;->REFLECTION_REQUEST:Lcom/mwr/jdiesel/api/Protobuf$Message$MessageType;

    .line 75
    new-instance v0, Lcom/mwr/jdiesel/api/Protobuf$Message$MessageType;

    const-string v1, "REFLECTION_RESPONSE"

    invoke-direct {v0, v1, v4, v4, v6}, Lcom/mwr/jdiesel/api/Protobuf$Message$MessageType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$MessageType;->REFLECTION_RESPONSE:Lcom/mwr/jdiesel/api/Protobuf$Message$MessageType;

    new-array v0, v6, [Lcom/mwr/jdiesel/api/Protobuf$Message$MessageType;

    sget-object v1, Lcom/mwr/jdiesel/api/Protobuf$Message$MessageType;->SYSTEM_REQUEST:Lcom/mwr/jdiesel/api/Protobuf$Message$MessageType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/mwr/jdiesel/api/Protobuf$Message$MessageType;->SYSTEM_RESPONSE:Lcom/mwr/jdiesel/api/Protobuf$Message$MessageType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/mwr/jdiesel/api/Protobuf$Message$MessageType;->REFLECTION_REQUEST:Lcom/mwr/jdiesel/api/Protobuf$Message$MessageType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/mwr/jdiesel/api/Protobuf$Message$MessageType;->REFLECTION_RESPONSE:Lcom/mwr/jdiesel/api/Protobuf$Message$MessageType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$MessageType;->ENUM$VALUES:[Lcom/mwr/jdiesel/api/Protobuf$Message$MessageType;

    .line 102
    new-instance v0, Lcom/mwr/jdiesel/api/Protobuf$Message$MessageType$1;

    invoke-direct {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$MessageType$1;-><init>()V

    .line 101
    sput-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$MessageType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    .line 121
    new-array v0, v6, [Lcom/mwr/jdiesel/api/Protobuf$Message$MessageType;

    .line 122
    sget-object v1, Lcom/mwr/jdiesel/api/Protobuf$Message$MessageType;->SYSTEM_REQUEST:Lcom/mwr/jdiesel/api/Protobuf$Message$MessageType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/mwr/jdiesel/api/Protobuf$Message$MessageType;->SYSTEM_RESPONSE:Lcom/mwr/jdiesel/api/Protobuf$Message$MessageType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/mwr/jdiesel/api/Protobuf$Message$MessageType;->REFLECTION_REQUEST:Lcom/mwr/jdiesel/api/Protobuf$Message$MessageType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/mwr/jdiesel/api/Protobuf$Message$MessageType;->REFLECTION_RESPONSE:Lcom/mwr/jdiesel/api/Protobuf$Message$MessageType;

    aput-object v1, v0, v4

    .line 121
    sput-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$MessageType;->VALUES:[Lcom/mwr/jdiesel/api/Protobuf$Message$MessageType;

    .line 123
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .param p3, "index"    # I
    .param p4, "value"    # I

    .prologue
    .line 137
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 138
    iput p3, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$MessageType;->index:I

    .line 139
    iput p4, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$MessageType;->value:I

    .line 140
    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 2

    .prologue
    .line 118
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

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
            "Lcom/mwr/jdiesel/api/Protobuf$Message$MessageType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 98
    sget-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$MessageType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/mwr/jdiesel/api/Protobuf$Message$MessageType;
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 87
    packed-switch p0, :pswitch_data_0

    .line 92
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 88
    :pswitch_0
    sget-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$MessageType;->SYSTEM_REQUEST:Lcom/mwr/jdiesel/api/Protobuf$Message$MessageType;

    goto :goto_0

    .line 89
    :pswitch_1
    sget-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$MessageType;->SYSTEM_RESPONSE:Lcom/mwr/jdiesel/api/Protobuf$Message$MessageType;

    goto :goto_0

    .line 90
    :pswitch_2
    sget-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$MessageType;->REFLECTION_REQUEST:Lcom/mwr/jdiesel/api/Protobuf$Message$MessageType;

    goto :goto_0

    .line 91
    :pswitch_3
    sget-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$MessageType;->REFLECTION_RESPONSE:Lcom/mwr/jdiesel/api/Protobuf$Message$MessageType;

    goto :goto_0

    .line 87
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static valueOf(Lcom/google/protobuf/Descriptors$EnumValueDescriptor;)Lcom/mwr/jdiesel/api/Protobuf$Message$MessageType;
    .locals 2
    .param p0, "desc"    # Lcom/google/protobuf/Descriptors$EnumValueDescriptor;

    .prologue
    .line 127
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getType()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$MessageType;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 128
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 129
    const-string v1, "EnumValueDescriptor is not for this type."

    .line 128
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 131
    :cond_0
    sget-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$MessageType;->VALUES:[Lcom/mwr/jdiesel/api/Protobuf$Message$MessageType;

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getIndex()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mwr/jdiesel/api/Protobuf$Message$MessageType;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/mwr/jdiesel/api/Protobuf$Message$MessageType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mwr/jdiesel/api/Protobuf$Message$MessageType;

    return-object v0
.end method

.method public static values()[Lcom/mwr/jdiesel/api/Protobuf$Message$MessageType;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$MessageType;->ENUM$VALUES:[Lcom/mwr/jdiesel/api/Protobuf$Message$MessageType;

    array-length v1, v0

    new-array v2, v1, [Lcom/mwr/jdiesel/api/Protobuf$Message$MessageType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 1

    .prologue
    .line 114
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$MessageType;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getNumber()I
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$MessageType;->value:I

    return v0
.end method

.method public final getValueDescriptor()Lcom/google/protobuf/Descriptors$EnumValueDescriptor;
    .locals 2

    .prologue
    .line 110
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$MessageType;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$EnumDescriptor;->getValues()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$MessageType;->index:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;

    return-object v0
.end method
