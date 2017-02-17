.class public final enum Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;
.super Ljava/lang/Enum;
.source "Protobuf.java"

# interfaces
.implements Lcom/google/protobuf/ProtocolMessageEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PrimitiveType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;",
        ">;",
        "Lcom/google/protobuf/ProtocolMessageEnum;"
    }
.end annotation


# static fields
.field public static final enum BOOL:Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;

.field public static final BOOL_VALUE:I = 0x1

.field public static final enum BYTE:Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;

.field public static final BYTE_VALUE:I = 0x5

.field public static final enum CHAR:Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;

.field public static final CHAR_VALUE:I = 0x8

.field public static final enum DOUBLE:Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;

.field public static final DOUBLE_VALUE:I = 0x7

.field private static final synthetic ENUM$VALUES:[Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;

.field public static final enum FLOAT:Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;

.field public static final FLOAT_VALUE:I = 0x4

.field public static final enum INT:Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;

.field public static final INT_VALUE:I = 0x2

.field public static final enum LONG:Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;

.field public static final LONG_VALUE:I = 0x3

.field public static final enum SHORT:Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;

.field public static final SHORT_VALUE:I = 0x6

.field private static final VALUES:[Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;",
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

    .line 11631
    new-instance v0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;

    const-string v1, "BOOL"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;->BOOL:Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;

    .line 11632
    new-instance v0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;

    const-string v1, "INT"

    invoke-direct {v0, v1, v5, v5, v6}, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;->INT:Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;

    .line 11633
    new-instance v0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;

    const-string v1, "LONG"

    invoke-direct {v0, v1, v6, v6, v7}, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;->LONG:Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;

    .line 11634
    new-instance v0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;

    const-string v1, "FLOAT"

    invoke-direct {v0, v1, v7, v7, v8}, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;->FLOAT:Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;

    .line 11635
    new-instance v0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;

    const-string v1, "BYTE"

    invoke-direct {v0, v1, v8, v8, v9}, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;->BYTE:Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;

    .line 11636
    new-instance v0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;

    const-string v1, "SHORT"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v9, v9, v2}, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;->SHORT:Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;

    .line 11637
    new-instance v0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;

    const-string v1, "DOUBLE"

    const/4 v2, 0x6

    const/4 v3, 0x6

    const/4 v4, 0x7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;->DOUBLE:Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;

    .line 11638
    new-instance v0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;

    const-string v1, "CHAR"

    const/4 v2, 0x7

    const/4 v3, 0x7

    const/16 v4, 0x8

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;->CHAR:Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;

    const/16 v0, 0x8

    new-array v0, v0, [Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;

    const/4 v1, 0x0

    sget-object v2, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;->BOOL:Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;

    aput-object v2, v0, v1

    sget-object v1, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;->INT:Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;->LONG:Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;->FLOAT:Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;->BYTE:Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;

    aput-object v1, v0, v8

    sget-object v1, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;->SHORT:Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;

    aput-object v1, v0, v9

    const/4 v1, 0x6

    sget-object v2, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;->DOUBLE:Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;->CHAR:Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;->ENUM$VALUES:[Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;

    .line 11673
    new-instance v0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType$1;

    invoke-direct {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType$1;-><init>()V

    .line 11672
    sput-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    .line 11692
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;

    const/4 v1, 0x0

    .line 11693
    sget-object v2, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;->BOOL:Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;

    aput-object v2, v0, v1

    sget-object v1, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;->INT:Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;->LONG:Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;->FLOAT:Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;->BYTE:Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;

    aput-object v1, v0, v8

    sget-object v1, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;->SHORT:Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;

    aput-object v1, v0, v9

    const/4 v1, 0x6

    sget-object v2, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;->DOUBLE:Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;->CHAR:Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;

    aput-object v2, v0, v1

    .line 11692
    sput-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;->VALUES:[Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;

    .line 11694
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .param p3, "index"    # I
    .param p4, "value"    # I

    .prologue
    .line 11708
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 11709
    iput p3, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;->index:I

    .line 11710
    iput p4, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;->value:I

    .line 11711
    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 2

    .prologue
    .line 11689
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

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
            "Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 11669
    sget-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 11654
    packed-switch p0, :pswitch_data_0

    .line 11663
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 11655
    :pswitch_0
    sget-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;->BOOL:Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;

    goto :goto_0

    .line 11656
    :pswitch_1
    sget-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;->INT:Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;

    goto :goto_0

    .line 11657
    :pswitch_2
    sget-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;->LONG:Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;

    goto :goto_0

    .line 11658
    :pswitch_3
    sget-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;->FLOAT:Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;

    goto :goto_0

    .line 11659
    :pswitch_4
    sget-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;->BYTE:Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;

    goto :goto_0

    .line 11660
    :pswitch_5
    sget-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;->SHORT:Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;

    goto :goto_0

    .line 11661
    :pswitch_6
    sget-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;->DOUBLE:Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;

    goto :goto_0

    .line 11662
    :pswitch_7
    sget-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;->CHAR:Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;

    goto :goto_0

    .line 11654
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

.method public static valueOf(Lcom/google/protobuf/Descriptors$EnumValueDescriptor;)Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;
    .locals 2
    .param p0, "desc"    # Lcom/google/protobuf/Descriptors$EnumValueDescriptor;

    .prologue
    .line 11698
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getType()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 11699
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 11700
    const-string v1, "EnumValueDescriptor is not for this type."

    .line 11699
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 11702
    :cond_0
    sget-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;->VALUES:[Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getIndex()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;

    return-object v0
.end method

.method public static values()[Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;->ENUM$VALUES:[Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;

    array-length v1, v0

    new-array v2, v1, [Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 1

    .prologue
    .line 11685
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getNumber()I
    .locals 1

    .prologue
    .line 11651
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;->value:I

    return v0
.end method

.method public final getValueDescriptor()Lcom/google/protobuf/Descriptors$EnumValueDescriptor;
    .locals 2

    .prologue
    .line 11681
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$EnumDescriptor;->getValues()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;->index:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;

    return-object v0
.end method
