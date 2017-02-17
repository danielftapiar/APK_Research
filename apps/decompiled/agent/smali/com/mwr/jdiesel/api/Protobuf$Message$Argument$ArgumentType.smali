.class public final enum Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;
.super Ljava/lang/Enum;
.source "Protobuf.java"

# interfaces
.implements Lcom/google/protobuf/ProtocolMessageEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ArgumentType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;",
        ">;",
        "Lcom/google/protobuf/ProtocolMessageEnum;"
    }
.end annotation


# static fields
.field public static final enum ARRAY:Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;

.field public static final ARRAY_VALUE:I = 0x5

.field public static final enum DATA:Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;

.field public static final DATA_VALUE:I = 0x6

.field private static final synthetic ENUM$VALUES:[Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;

.field public static final enum NULL:Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;

.field public static final NULL_VALUE:I = 0x1

.field public static final enum OBJECT:Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;

.field public static final OBJECT_VALUE:I = 0x4

.field public static final enum PRIMITIVE:Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;

.field public static final PRIMITIVE_VALUE:I = 0x2

.field public static final enum STRING:Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;

.field public static final STRING_VALUE:I = 0x3

.field private static final VALUES:[Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;",
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

    .line 8352
    new-instance v0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;

    const-string v1, "NULL"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;->NULL:Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;

    .line 8353
    new-instance v0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;

    const-string v1, "PRIMITIVE"

    invoke-direct {v0, v1, v4, v4, v5}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;->PRIMITIVE:Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;

    .line 8354
    new-instance v0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;

    const-string v1, "STRING"

    invoke-direct {v0, v1, v5, v5, v6}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;->STRING:Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;

    .line 8355
    new-instance v0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;

    const-string v1, "OBJECT"

    invoke-direct {v0, v1, v6, v6, v7}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;->OBJECT:Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;

    .line 8356
    new-instance v0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;

    const-string v1, "ARRAY"

    invoke-direct {v0, v1, v7, v7, v8}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;->ARRAY:Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;

    .line 8357
    new-instance v0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;

    const-string v1, "DATA"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v8, v8, v2}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;->DATA:Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;

    const/4 v1, 0x0

    sget-object v2, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;->NULL:Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;

    aput-object v2, v0, v1

    sget-object v1, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;->PRIMITIVE:Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;->STRING:Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;->OBJECT:Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;->ARRAY:Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;->DATA:Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;

    aput-object v1, v0, v8

    sput-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;->ENUM$VALUES:[Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;

    .line 8388
    new-instance v0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType$1;

    invoke-direct {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType$1;-><init>()V

    .line 8387
    sput-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    .line 8407
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;

    const/4 v1, 0x0

    .line 8408
    sget-object v2, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;->NULL:Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;

    aput-object v2, v0, v1

    sget-object v1, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;->PRIMITIVE:Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;->STRING:Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;->OBJECT:Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;->ARRAY:Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;->DATA:Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;

    aput-object v1, v0, v8

    .line 8407
    sput-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;->VALUES:[Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;

    .line 8409
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .param p3, "index"    # I
    .param p4, "value"    # I

    .prologue
    .line 8423
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 8424
    iput p3, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;->index:I

    .line 8425
    iput p4, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;->value:I

    .line 8426
    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 2

    .prologue
    .line 8404
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

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
            "Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 8384
    sget-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 8371
    packed-switch p0, :pswitch_data_0

    .line 8378
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 8372
    :pswitch_0
    sget-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;->NULL:Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;

    goto :goto_0

    .line 8373
    :pswitch_1
    sget-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;->PRIMITIVE:Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;

    goto :goto_0

    .line 8374
    :pswitch_2
    sget-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;->STRING:Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;

    goto :goto_0

    .line 8375
    :pswitch_3
    sget-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;->OBJECT:Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;

    goto :goto_0

    .line 8376
    :pswitch_4
    sget-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;->ARRAY:Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;

    goto :goto_0

    .line 8377
    :pswitch_5
    sget-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;->DATA:Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;

    goto :goto_0

    .line 8371
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

.method public static valueOf(Lcom/google/protobuf/Descriptors$EnumValueDescriptor;)Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;
    .locals 2
    .param p0, "desc"    # Lcom/google/protobuf/Descriptors$EnumValueDescriptor;

    .prologue
    .line 8413
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getType()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 8414
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 8415
    const-string v1, "EnumValueDescriptor is not for this type."

    .line 8414
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8417
    :cond_0
    sget-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;->VALUES:[Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getIndex()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;

    return-object v0
.end method

.method public static values()[Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;->ENUM$VALUES:[Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;

    array-length v1, v0

    new-array v2, v1, [Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 1

    .prologue
    .line 8400
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getNumber()I
    .locals 1

    .prologue
    .line 8368
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;->value:I

    return v0
.end method

.method public final getValueDescriptor()Lcom/google/protobuf/Descriptors$EnumValueDescriptor;
    .locals 2

    .prologue
    .line 8396
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$EnumDescriptor;->getValues()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;->index:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;

    return-object v0
.end method
