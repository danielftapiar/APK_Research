.class public final enum Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseStatus;
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
    name = "ResponseStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseStatus;",
        ">;",
        "Lcom/google/protobuf/ProtocolMessageEnum;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseStatus;

.field public static final enum ERROR:Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseStatus;

.field public static final ERROR_VALUE:I = 0x2

.field public static final enum SUCCESS:Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseStatus;

.field public static final SUCCESS_VALUE:I = 0x1

.field private static final VALUES:[Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseStatus;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseStatus;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final index:I

.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 6955
    new-instance v0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseStatus;

    const-string v1, "SUCCESS"

    invoke-direct {v0, v1, v3, v3, v2}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseStatus;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseStatus;->SUCCESS:Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseStatus;

    .line 6956
    new-instance v0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseStatus;

    const-string v1, "ERROR"

    invoke-direct {v0, v1, v2, v2, v4}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseStatus;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseStatus;->ERROR:Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseStatus;

    new-array v0, v4, [Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseStatus;

    sget-object v1, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseStatus;->SUCCESS:Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseStatus;->ERROR:Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseStatus;

    aput-object v1, v0, v2

    sput-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseStatus;->ENUM$VALUES:[Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseStatus;

    .line 6979
    new-instance v0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseStatus$1;

    invoke-direct {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseStatus$1;-><init>()V

    .line 6978
    sput-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseStatus;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    .line 6998
    new-array v0, v4, [Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseStatus;

    .line 6999
    sget-object v1, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseStatus;->SUCCESS:Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseStatus;->ERROR:Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseStatus;

    aput-object v1, v0, v2

    .line 6998
    sput-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseStatus;->VALUES:[Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseStatus;

    .line 7000
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .param p3, "index"    # I
    .param p4, "value"    # I

    .prologue
    .line 7014
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 7015
    iput p3, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseStatus;->index:I

    .line 7016
    iput p4, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseStatus;->value:I

    .line 7017
    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 2

    .prologue
    .line 6995
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$Descriptor;->getEnumTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

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
            "Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseStatus;",
            ">;"
        }
    .end annotation

    .prologue
    .line 6975
    sget-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseStatus;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseStatus;
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 6966
    packed-switch p0, :pswitch_data_0

    .line 6969
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 6967
    :pswitch_0
    sget-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseStatus;->SUCCESS:Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseStatus;

    goto :goto_0

    .line 6968
    :pswitch_1
    sget-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseStatus;->ERROR:Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseStatus;

    goto :goto_0

    .line 6966
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static valueOf(Lcom/google/protobuf/Descriptors$EnumValueDescriptor;)Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseStatus;
    .locals 2
    .param p0, "desc"    # Lcom/google/protobuf/Descriptors$EnumValueDescriptor;

    .prologue
    .line 7004
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getType()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseStatus;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 7005
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 7006
    const-string v1, "EnumValueDescriptor is not for this type."

    .line 7005
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7008
    :cond_0
    sget-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseStatus;->VALUES:[Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseStatus;

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getIndex()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseStatus;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseStatus;

    return-object v0
.end method

.method public static values()[Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseStatus;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseStatus;->ENUM$VALUES:[Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseStatus;

    array-length v1, v0

    new-array v2, v1, [Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseStatus;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 1

    .prologue
    .line 6991
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseStatus;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getNumber()I
    .locals 1

    .prologue
    .line 6963
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseStatus;->value:I

    return v0
.end method

.method public final getValueDescriptor()Lcom/google/protobuf/Descriptors$EnumValueDescriptor;
    .locals 2

    .prologue
    .line 6987
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseStatus;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$EnumDescriptor;->getValues()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$ResponseStatus;->index:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;

    return-object v0
.end method
