.class public Lcom/mwr/jdiesel/reflection/types/ReflectedPrimitive;
.super Lcom/mwr/jdiesel/reflection/types/ReflectedType;
.source "ReflectedPrimitive.java"


# static fields
.field private static synthetic $SWITCH_TABLE$com$mwr$jdiesel$api$Protobuf$Message$Primitive$PrimitiveType:[I


# instance fields
.field private type:Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;

.field private value:Ljava/lang/Object;


# direct methods
.method static synthetic $SWITCH_TABLE$com$mwr$jdiesel$api$Protobuf$Message$Primitive$PrimitiveType()[I
    .locals 3

    .prologue
    .line 6
    sget-object v0, Lcom/mwr/jdiesel/reflection/types/ReflectedPrimitive;->$SWITCH_TABLE$com$mwr$jdiesel$api$Protobuf$Message$Primitive$PrimitiveType:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;->values()[Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;->BOOL:Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;

    invoke-virtual {v1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_7

    :goto_1
    :try_start_1
    sget-object v1, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;->BYTE:Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;

    invoke-virtual {v1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_6

    :goto_2
    :try_start_2
    sget-object v1, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;->CHAR:Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;

    invoke-virtual {v1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_5

    :goto_3
    :try_start_3
    sget-object v1, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;->DOUBLE:Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;

    invoke-virtual {v1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_4

    :goto_4
    :try_start_4
    sget-object v1, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;->FLOAT:Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;

    invoke-virtual {v1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_3

    :goto_5
    :try_start_5
    sget-object v1, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;->INT:Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;

    invoke-virtual {v1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_2

    :goto_6
    :try_start_6
    sget-object v1, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;->LONG:Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;

    invoke-virtual {v1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_1

    :goto_7
    :try_start_7
    sget-object v1, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;->SHORT:Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;

    invoke-virtual {v1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_0

    :goto_8
    sput-object v0, Lcom/mwr/jdiesel/reflection/types/ReflectedPrimitive;->$SWITCH_TABLE$com$mwr$jdiesel$api$Protobuf$Message$Primitive$PrimitiveType:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_8

    :catch_1
    move-exception v1

    goto :goto_7

    :catch_2
    move-exception v1

    goto :goto_6

    :catch_3
    move-exception v1

    goto :goto_5

    :catch_4
    move-exception v1

    goto :goto_4

    :catch_5
    move-exception v1

    goto :goto_3

    :catch_6
    move-exception v1

    goto :goto_2

    :catch_7
    move-exception v1

    goto :goto_1
.end method

.method public constructor <init>(Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;)V
    .locals 2
    .param p1, "primitive"    # Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/mwr/jdiesel/reflection/types/ReflectedType;-><init>()V

    .line 52
    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;->getType()Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;

    move-result-object v0

    iput-object v0, p0, Lcom/mwr/jdiesel/reflection/types/ReflectedPrimitive;->type:Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;

    .line 54
    invoke-static {}, Lcom/mwr/jdiesel/reflection/types/ReflectedPrimitive;->$SWITCH_TABLE$com$mwr$jdiesel$api$Protobuf$Message$Primitive$PrimitiveType()[I

    move-result-object v0

    iget-object v1, p0, Lcom/mwr/jdiesel/reflection/types/ReflectedPrimitive;->type:Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;

    invoke-virtual {v1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 87
    :goto_0
    return-void

    .line 56
    :pswitch_0
    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;->getBool()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/mwr/jdiesel/reflection/types/ReflectedPrimitive;->value:Ljava/lang/Object;

    goto :goto_0

    .line 60
    :pswitch_1
    new-instance v0, Ljava/lang/Byte;

    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;->getByte()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Byte;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mwr/jdiesel/reflection/types/ReflectedPrimitive;->value:Ljava/lang/Object;

    goto :goto_0

    .line 64
    :pswitch_2
    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;->getChar()I

    move-result v0

    int-to-char v0, v0

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    iput-object v0, p0, Lcom/mwr/jdiesel/reflection/types/ReflectedPrimitive;->value:Ljava/lang/Object;

    goto :goto_0

    .line 68
    :pswitch_3
    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;->getDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/mwr/jdiesel/reflection/types/ReflectedPrimitive;->value:Ljava/lang/Object;

    goto :goto_0

    .line 72
    :pswitch_4
    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;->getFloat()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/mwr/jdiesel/reflection/types/ReflectedPrimitive;->value:Ljava/lang/Object;

    goto :goto_0

    .line 76
    :pswitch_5
    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;->getInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/mwr/jdiesel/reflection/types/ReflectedPrimitive;->value:Ljava/lang/Object;

    goto :goto_0

    .line 80
    :pswitch_6
    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;->getLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/mwr/jdiesel/reflection/types/ReflectedPrimitive;->value:Ljava/lang/Object;

    goto :goto_0

    .line 84
    :pswitch_7
    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;->getShort()I

    move-result v0

    int-to-short v0, v0

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    iput-object v0, p0, Lcom/mwr/jdiesel/reflection/types/ReflectedPrimitive;->value:Ljava/lang/Object;

    goto :goto_0

    .line 54
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_1
        :pswitch_7
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public constructor <init>(Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "b"    # Ljava/lang/Boolean;

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/mwr/jdiesel/reflection/types/ReflectedType;-><init>()V

    .line 12
    sget-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;->BOOL:Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;

    iput-object v0, p0, Lcom/mwr/jdiesel/reflection/types/ReflectedPrimitive;->type:Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;

    .line 13
    iput-object p1, p0, Lcom/mwr/jdiesel/reflection/types/ReflectedPrimitive;->value:Ljava/lang/Object;

    .line 14
    return-void
.end method

.method public constructor <init>(Ljava/lang/Byte;)V
    .locals 1
    .param p1, "b"    # Ljava/lang/Byte;

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/mwr/jdiesel/reflection/types/ReflectedType;-><init>()V

    .line 17
    sget-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;->BYTE:Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;

    iput-object v0, p0, Lcom/mwr/jdiesel/reflection/types/ReflectedPrimitive;->type:Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;

    .line 18
    iput-object p1, p0, Lcom/mwr/jdiesel/reflection/types/ReflectedPrimitive;->value:Ljava/lang/Object;

    .line 19
    return-void
.end method

.method public constructor <init>(Ljava/lang/Character;)V
    .locals 1
    .param p1, "c"    # Ljava/lang/Character;

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/mwr/jdiesel/reflection/types/ReflectedType;-><init>()V

    .line 22
    sget-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;->CHAR:Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;

    iput-object v0, p0, Lcom/mwr/jdiesel/reflection/types/ReflectedPrimitive;->type:Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;

    .line 23
    iput-object p1, p0, Lcom/mwr/jdiesel/reflection/types/ReflectedPrimitive;->value:Ljava/lang/Object;

    .line 24
    return-void
.end method

.method public constructor <init>(Ljava/lang/Double;)V
    .locals 1
    .param p1, "d"    # Ljava/lang/Double;

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/mwr/jdiesel/reflection/types/ReflectedType;-><init>()V

    .line 27
    sget-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;->DOUBLE:Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;

    iput-object v0, p0, Lcom/mwr/jdiesel/reflection/types/ReflectedPrimitive;->type:Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;

    .line 28
    iput-object p1, p0, Lcom/mwr/jdiesel/reflection/types/ReflectedPrimitive;->value:Ljava/lang/Object;

    .line 29
    return-void
.end method

.method public constructor <init>(Ljava/lang/Float;)V
    .locals 1
    .param p1, "f"    # Ljava/lang/Float;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/mwr/jdiesel/reflection/types/ReflectedType;-><init>()V

    .line 32
    sget-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;->FLOAT:Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;

    iput-object v0, p0, Lcom/mwr/jdiesel/reflection/types/ReflectedPrimitive;->type:Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;

    .line 33
    iput-object p1, p0, Lcom/mwr/jdiesel/reflection/types/ReflectedPrimitive;->value:Ljava/lang/Object;

    .line 34
    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;)V
    .locals 1
    .param p1, "i"    # Ljava/lang/Integer;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/mwr/jdiesel/reflection/types/ReflectedType;-><init>()V

    .line 37
    sget-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;->INT:Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;

    iput-object v0, p0, Lcom/mwr/jdiesel/reflection/types/ReflectedPrimitive;->type:Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;

    .line 38
    iput-object p1, p0, Lcom/mwr/jdiesel/reflection/types/ReflectedPrimitive;->value:Ljava/lang/Object;

    .line 39
    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;)V
    .locals 1
    .param p1, "l"    # Ljava/lang/Long;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/mwr/jdiesel/reflection/types/ReflectedType;-><init>()V

    .line 42
    sget-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;->LONG:Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;

    iput-object v0, p0, Lcom/mwr/jdiesel/reflection/types/ReflectedPrimitive;->type:Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;

    .line 43
    iput-object p1, p0, Lcom/mwr/jdiesel/reflection/types/ReflectedPrimitive;->value:Ljava/lang/Object;

    .line 44
    return-void
.end method

.method public constructor <init>(Ljava/lang/Short;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/Short;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/mwr/jdiesel/reflection/types/ReflectedType;-><init>()V

    .line 47
    sget-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;->SHORT:Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;

    iput-object v0, p0, Lcom/mwr/jdiesel/reflection/types/ReflectedPrimitive;->type:Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;

    .line 48
    iput-object p1, p0, Lcom/mwr/jdiesel/reflection/types/ReflectedPrimitive;->value:Ljava/lang/Object;

    .line 49
    return-void
.end method

.method private getPrimitive()Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;
    .locals 3

    .prologue
    .line 114
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;->newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/mwr/jdiesel/reflection/types/ReflectedPrimitive;->type:Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;

    invoke-virtual {v1, v2}, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->setType(Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;)Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;

    move-result-object v0

    .line 116
    .local v0, "primitive":Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;
    invoke-static {}, Lcom/mwr/jdiesel/reflection/types/ReflectedPrimitive;->$SWITCH_TABLE$com$mwr$jdiesel$api$Protobuf$Message$Primitive$PrimitiveType()[I

    move-result-object v1

    iget-object v2, p0, Lcom/mwr/jdiesel/reflection/types/ReflectedPrimitive;->type:Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;

    invoke-virtual {v2}, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 125
    const/4 v1, 0x0

    :goto_0
    return-object v1

    .line 117
    :pswitch_0
    iget-object v1, p0, Lcom/mwr/jdiesel/reflection/types/ReflectedPrimitive;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->setBool(Z)Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->build()Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;

    move-result-object v1

    goto :goto_0

    .line 118
    :pswitch_1
    iget-object v1, p0, Lcom/mwr/jdiesel/reflection/types/ReflectedPrimitive;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Byte;

    invoke-virtual {v1}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->setByte(I)Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->build()Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;

    move-result-object v1

    goto :goto_0

    .line 119
    :pswitch_2
    iget-object v1, p0, Lcom/mwr/jdiesel/reflection/types/ReflectedPrimitive;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Character;

    invoke-virtual {v1}, Ljava/lang/Character;->charValue()C

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->setChar(I)Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->build()Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;

    move-result-object v1

    goto :goto_0

    .line 120
    :pswitch_3
    iget-object v1, p0, Lcom/mwr/jdiesel/reflection/types/ReflectedPrimitive;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->setDouble(D)Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->build()Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;

    move-result-object v1

    goto :goto_0

    .line 121
    :pswitch_4
    iget-object v1, p0, Lcom/mwr/jdiesel/reflection/types/ReflectedPrimitive;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->setFloat(F)Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->build()Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;

    move-result-object v1

    goto :goto_0

    .line 122
    :pswitch_5
    iget-object v1, p0, Lcom/mwr/jdiesel/reflection/types/ReflectedPrimitive;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->setInt(I)Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->build()Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;

    move-result-object v1

    goto :goto_0

    .line 123
    :pswitch_6
    iget-object v1, p0, Lcom/mwr/jdiesel/reflection/types/ReflectedPrimitive;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->setLong(J)Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->build()Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;

    move-result-object v1

    goto :goto_0

    .line 124
    :pswitch_7
    iget-object v1, p0, Lcom/mwr/jdiesel/reflection/types/ReflectedPrimitive;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Short;

    invoke-virtual {v1}, Ljava/lang/Short;->shortValue()S

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->setShort(I)Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;->build()Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;

    move-result-object v1

    goto/16 :goto_0

    .line 116
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_1
        :pswitch_7
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public getArgument()Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;
    .locals 2

    .prologue
    .line 91
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;->newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;

    move-result-object v0

    sget-object v1, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;->PRIMITIVE:Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;

    invoke-virtual {v0, v1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->setType(Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;)Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;

    move-result-object v0

    invoke-direct {p0}, Lcom/mwr/jdiesel/reflection/types/ReflectedPrimitive;->getPrimitive()Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->setPrimitive(Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;)Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->build()Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;

    move-result-object v0

    return-object v0
.end method

.method public getArrayType()Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 95
    invoke-static {}, Lcom/mwr/jdiesel/reflection/types/ReflectedPrimitive;->$SWITCH_TABLE$com$mwr$jdiesel$api$Protobuf$Message$Primitive$PrimitiveType()[I

    move-result-object v0

    iget-object v1, p0, Lcom/mwr/jdiesel/reflection/types/ReflectedPrimitive;->type:Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;

    invoke-virtual {v1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 104
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 96
    :pswitch_0
    const-class v0, [Ljava/lang/Boolean;

    goto :goto_0

    .line 97
    :pswitch_1
    const-class v0, [Ljava/lang/Byte;

    goto :goto_0

    .line 98
    :pswitch_2
    const-class v0, [Ljava/lang/Character;

    goto :goto_0

    .line 99
    :pswitch_3
    const-class v0, [Ljava/lang/Double;

    goto :goto_0

    .line 100
    :pswitch_4
    const-class v0, [Ljava/lang/Float;

    goto :goto_0

    .line 101
    :pswitch_5
    const-class v0, [Ljava/lang/Integer;

    goto :goto_0

    .line 102
    :pswitch_6
    const-class v0, [Ljava/lang/Long;

    goto :goto_0

    .line 103
    :pswitch_7
    const-class v0, [Ljava/lang/Short;

    goto :goto_0

    .line 95
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_1
        :pswitch_7
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public getNative()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 110
    invoke-virtual {p0}, Lcom/mwr/jdiesel/reflection/types/ReflectedPrimitive;->getWrapperClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lcom/mwr/jdiesel/reflection/types/ReflectedPrimitive;->value:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getPrimitiveType()Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/mwr/jdiesel/reflection/types/ReflectedPrimitive;->type:Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;

    return-object v0
.end method

.method public getType()Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 135
    invoke-static {}, Lcom/mwr/jdiesel/reflection/types/ReflectedPrimitive;->$SWITCH_TABLE$com$mwr$jdiesel$api$Protobuf$Message$Primitive$PrimitiveType()[I

    move-result-object v0

    iget-object v1, p0, Lcom/mwr/jdiesel/reflection/types/ReflectedPrimitive;->type:Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;

    invoke-virtual {v1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 144
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 136
    :pswitch_0
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    goto :goto_0

    .line 137
    :pswitch_1
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    goto :goto_0

    .line 138
    :pswitch_2
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    goto :goto_0

    .line 139
    :pswitch_3
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    goto :goto_0

    .line 140
    :pswitch_4
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    goto :goto_0

    .line 141
    :pswitch_5
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    goto :goto_0

    .line 142
    :pswitch_6
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    goto :goto_0

    .line 143
    :pswitch_7
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    goto :goto_0

    .line 135
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_1
        :pswitch_7
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public getWrapperClass()Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 149
    invoke-static {}, Lcom/mwr/jdiesel/reflection/types/ReflectedPrimitive;->$SWITCH_TABLE$com$mwr$jdiesel$api$Protobuf$Message$Primitive$PrimitiveType()[I

    move-result-object v0

    iget-object v1, p0, Lcom/mwr/jdiesel/reflection/types/ReflectedPrimitive;->type:Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;

    invoke-virtual {v1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 158
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 150
    :pswitch_0
    const-class v0, Ljava/lang/Boolean;

    goto :goto_0

    .line 151
    :pswitch_1
    const-class v0, Ljava/lang/Byte;

    goto :goto_0

    .line 152
    :pswitch_2
    const-class v0, Ljava/lang/Character;

    goto :goto_0

    .line 153
    :pswitch_3
    const-class v0, Ljava/lang/Double;

    goto :goto_0

    .line 154
    :pswitch_4
    const-class v0, Ljava/lang/Float;

    goto :goto_0

    .line 155
    :pswitch_5
    const-class v0, Ljava/lang/Integer;

    goto :goto_0

    .line 156
    :pswitch_6
    const-class v0, Ljava/lang/Long;

    goto :goto_0

    .line 157
    :pswitch_7
    const-class v0, Ljava/lang/Short;

    goto :goto_0

    .line 149
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_1
        :pswitch_7
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method
