.class public Lcom/mwr/jdiesel/reflection/types/ReflectedArray;
.super Lcom/mwr/jdiesel/reflection/types/ReflectedType;
.source "ReflectedArray.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mwr/jdiesel/reflection/types/ReflectedType;",
        "Ljava/lang/Iterable",
        "<",
        "Lcom/mwr/jdiesel/reflection/types/ReflectedType;",
        ">;"
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$mwr$jdiesel$api$Protobuf$Message$Array$ArrayType:[I

.field private static synthetic $SWITCH_TABLE$com$mwr$jdiesel$api$Protobuf$Message$Primitive$PrimitiveType:[I


# instance fields
.field private elements:[Lcom/mwr/jdiesel/reflection/types/ReflectedType;

.field private type:Lcom/mwr/jdiesel/api/Protobuf$Message$Array$ArrayType;


# direct methods
.method static synthetic $SWITCH_TABLE$com$mwr$jdiesel$api$Protobuf$Message$Array$ArrayType()[I
    .locals 3

    .prologue
    .line 10
    sget-object v0, Lcom/mwr/jdiesel/reflection/types/ReflectedArray;->$SWITCH_TABLE$com$mwr$jdiesel$api$Protobuf$Message$Array$ArrayType:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$Array$ArrayType;->values()[Lcom/mwr/jdiesel/api/Protobuf$Message$Array$ArrayType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/mwr/jdiesel/api/Protobuf$Message$Array$ArrayType;->ARRAY:Lcom/mwr/jdiesel/api/Protobuf$Message$Array$ArrayType;

    invoke-virtual {v1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Array$ArrayType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_1
    :try_start_1
    sget-object v1, Lcom/mwr/jdiesel/api/Protobuf$Message$Array$ArrayType;->OBJECT:Lcom/mwr/jdiesel/api/Protobuf$Message$Array$ArrayType;

    invoke-virtual {v1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Array$ArrayType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_2
    :try_start_2
    sget-object v1, Lcom/mwr/jdiesel/api/Protobuf$Message$Array$ArrayType;->PRIMITIVE:Lcom/mwr/jdiesel/api/Protobuf$Message$Array$ArrayType;

    invoke-virtual {v1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Array$ArrayType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_3
    :try_start_3
    sget-object v1, Lcom/mwr/jdiesel/api/Protobuf$Message$Array$ArrayType;->STRING:Lcom/mwr/jdiesel/api/Protobuf$Message$Array$ArrayType;

    invoke-virtual {v1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Array$ArrayType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_4
    sput-object v0, Lcom/mwr/jdiesel/reflection/types/ReflectedArray;->$SWITCH_TABLE$com$mwr$jdiesel$api$Protobuf$Message$Array$ArrayType:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_4

    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_1
.end method

.method static synthetic $SWITCH_TABLE$com$mwr$jdiesel$api$Protobuf$Message$Primitive$PrimitiveType()[I
    .locals 3

    .prologue
    .line 10
    sget-object v0, Lcom/mwr/jdiesel/reflection/types/ReflectedArray;->$SWITCH_TABLE$com$mwr$jdiesel$api$Protobuf$Message$Primitive$PrimitiveType:[I

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
    sput-object v0, Lcom/mwr/jdiesel/reflection/types/ReflectedArray;->$SWITCH_TABLE$com$mwr$jdiesel$api$Protobuf$Message$Primitive$PrimitiveType:[I

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

.method public constructor <init>(Lcom/mwr/jdiesel/api/Protobuf$Message$Array$ArrayType;[Lcom/mwr/jdiesel/reflection/types/ReflectedType;)V
    .locals 0
    .param p1, "type"    # Lcom/mwr/jdiesel/api/Protobuf$Message$Array$ArrayType;
    .param p2, "elements"    # [Lcom/mwr/jdiesel/reflection/types/ReflectedType;

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/mwr/jdiesel/reflection/types/ReflectedType;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/mwr/jdiesel/reflection/types/ReflectedArray;->type:Lcom/mwr/jdiesel/api/Protobuf$Message$Array$ArrayType;

    .line 17
    iput-object p2, p0, Lcom/mwr/jdiesel/reflection/types/ReflectedArray;->elements:[Lcom/mwr/jdiesel/reflection/types/ReflectedType;

    .line 18
    return-void
.end method

.method public constructor <init>(Lcom/mwr/jdiesel/api/Protobuf$Message$Array;Lcom/mwr/jdiesel/reflection/ObjectStore;)V
    .locals 3
    .param p1, "array"    # Lcom/mwr/jdiesel/api/Protobuf$Message$Array;
    .param p2, "object_store"    # Lcom/mwr/jdiesel/reflection/ObjectStore;

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/mwr/jdiesel/reflection/types/ReflectedType;-><init>()V

    .line 21
    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Array;->getType()Lcom/mwr/jdiesel/api/Protobuf$Message$Array$ArrayType;

    move-result-object v1

    iput-object v1, p0, Lcom/mwr/jdiesel/reflection/types/ReflectedArray;->type:Lcom/mwr/jdiesel/api/Protobuf$Message$Array$ArrayType;

    .line 22
    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Array;->getElementCount()I

    move-result v1

    new-array v1, v1, [Lcom/mwr/jdiesel/reflection/types/ReflectedType;

    iput-object v1, p0, Lcom/mwr/jdiesel/reflection/types/ReflectedArray;->elements:[Lcom/mwr/jdiesel/reflection/types/ReflectedType;

    .line 24
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Array;->getElementCount()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 26
    return-void

    .line 25
    :cond_0
    iget-object v1, p0, Lcom/mwr/jdiesel/reflection/types/ReflectedArray;->elements:[Lcom/mwr/jdiesel/reflection/types/ReflectedType;

    invoke-virtual {p1, v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Array;->getElement(I)Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;

    move-result-object v2

    invoke-static {v2, p2}, Lcom/mwr/jdiesel/reflection/types/ReflectedType;->fromArgument(Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;Lcom/mwr/jdiesel/reflection/ObjectStore;)Lcom/mwr/jdiesel/reflection/types/ReflectedType;

    move-result-object v2

    aput-object v2, v1, v0

    .line 24
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static fromNative([Ljava/lang/Object;)Lcom/mwr/jdiesel/reflection/types/ReflectedArray;
    .locals 5
    .param p0, "elements"    # [Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    .line 29
    array-length v3, p0

    new-array v1, v3, [Lcom/mwr/jdiesel/reflection/types/ReflectedType;

    .line 31
    .local v1, "reflected_elements":[Lcom/mwr/jdiesel/reflection/types/ReflectedType;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, p0

    if-lt v0, v3, :cond_3

    .line 34
    sget-object v2, Lcom/mwr/jdiesel/api/Protobuf$Message$Array$ArrayType;->OBJECT:Lcom/mwr/jdiesel/api/Protobuf$Message$Array$ArrayType;

    .line 36
    .local v2, "type":Lcom/mwr/jdiesel/api/Protobuf$Message$Array$ArrayType;
    aget-object v3, v1, v4

    invoke-virtual {v3}, Lcom/mwr/jdiesel/reflection/types/ReflectedType;->getType()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->isArray()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 37
    sget-object v2, Lcom/mwr/jdiesel/api/Protobuf$Message$Array$ArrayType;->ARRAY:Lcom/mwr/jdiesel/api/Protobuf$Message$Array$ArrayType;

    .line 38
    :cond_0
    aget-object v3, v1, v4

    invoke-virtual {v3}, Lcom/mwr/jdiesel/reflection/types/ReflectedType;->getNative()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 39
    sget-object v2, Lcom/mwr/jdiesel/api/Protobuf$Message$Array$ArrayType;->STRING:Lcom/mwr/jdiesel/api/Protobuf$Message$Array$ArrayType;

    .line 40
    :cond_1
    aget-object v3, v1, v4

    invoke-virtual {v3}, Lcom/mwr/jdiesel/reflection/types/ReflectedType;->getType()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->isPrimitive()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 41
    sget-object v2, Lcom/mwr/jdiesel/api/Protobuf$Message$Array$ArrayType;->PRIMITIVE:Lcom/mwr/jdiesel/api/Protobuf$Message$Array$ArrayType;

    .line 43
    :cond_2
    new-instance v3, Lcom/mwr/jdiesel/reflection/types/ReflectedArray;

    invoke-direct {v3, v2, v1}, Lcom/mwr/jdiesel/reflection/types/ReflectedArray;-><init>(Lcom/mwr/jdiesel/api/Protobuf$Message$Array$ArrayType;[Lcom/mwr/jdiesel/reflection/types/ReflectedType;)V

    return-object v3

    .line 32
    .end local v2    # "type":Lcom/mwr/jdiesel/api/Protobuf$Message$Array$ArrayType;
    :cond_3
    aget-object v3, p0, v0

    invoke-static {v3}, Lcom/mwr/jdiesel/reflection/types/ReflectedType;->fromNative(Ljava/lang/Object;)Lcom/mwr/jdiesel/reflection/types/ReflectedType;

    move-result-object v3

    aput-object v3, v1, v0

    .line 31
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getArgument()Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;
    .locals 2

    .prologue
    .line 48
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "not implemented yet"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getElements()[Lcom/mwr/jdiesel/reflection/types/ReflectedType;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/mwr/jdiesel/reflection/types/ReflectedArray;->elements:[Lcom/mwr/jdiesel/reflection/types/ReflectedType;

    return-object v0
.end method

.method public getNative()Ljava/lang/Object;
    .locals 13

    .prologue
    .line 58
    iget-object v10, p0, Lcom/mwr/jdiesel/reflection/types/ReflectedArray;->type:Lcom/mwr/jdiesel/api/Protobuf$Message$Array$ArrayType;

    sget-object v11, Lcom/mwr/jdiesel/api/Protobuf$Message$Array$ArrayType;->PRIMITIVE:Lcom/mwr/jdiesel/api/Protobuf$Message$Array$ArrayType;

    if-ne v10, v11, :cond_9

    .line 59
    invoke-static {}, Lcom/mwr/jdiesel/reflection/types/ReflectedArray;->$SWITCH_TABLE$com$mwr$jdiesel$api$Protobuf$Message$Primitive$PrimitiveType()[I

    move-result-object v11

    iget-object v10, p0, Lcom/mwr/jdiesel/reflection/types/ReflectedArray;->elements:[Lcom/mwr/jdiesel/reflection/types/ReflectedType;

    const/4 v12, 0x0

    aget-object v10, v10, v12

    check-cast v10, Lcom/mwr/jdiesel/reflection/types/ReflectedPrimitive;

    invoke-virtual {v10}, Lcom/mwr/jdiesel/reflection/types/ReflectedPrimitive;->getPrimitiveType()Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;

    move-result-object v10

    invoke-virtual {v10}, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$PrimitiveType;->ordinal()I

    move-result v10

    aget v10, v11, v10

    packed-switch v10, :pswitch_data_0

    .line 125
    const/4 v8, 0x0

    .line 142
    :cond_0
    :goto_0
    return-object v8

    .line 61
    :pswitch_0
    iget-object v10, p0, Lcom/mwr/jdiesel/reflection/types/ReflectedArray;->elements:[Lcom/mwr/jdiesel/reflection/types/ReflectedType;

    array-length v10, v10

    new-array v0, v10, [Ljava/lang/Boolean;

    .line 63
    .local v0, "boolean_array":[Ljava/lang/Boolean;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    iget-object v10, p0, Lcom/mwr/jdiesel/reflection/types/ReflectedArray;->elements:[Lcom/mwr/jdiesel/reflection/types/ReflectedType;

    array-length v10, v10

    if-lt v5, v10, :cond_1

    move-object v8, v0

    .line 66
    goto :goto_0

    .line 64
    :cond_1
    iget-object v10, p0, Lcom/mwr/jdiesel/reflection/types/ReflectedArray;->elements:[Lcom/mwr/jdiesel/reflection/types/ReflectedType;

    aget-object v10, v10, v5

    invoke-virtual {v10}, Lcom/mwr/jdiesel/reflection/types/ReflectedType;->getNative()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    aput-object v10, v0, v5

    .line 63
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 69
    .end local v0    # "boolean_array":[Ljava/lang/Boolean;
    .end local v5    # "i":I
    :pswitch_1
    iget-object v10, p0, Lcom/mwr/jdiesel/reflection/types/ReflectedArray;->elements:[Lcom/mwr/jdiesel/reflection/types/ReflectedType;

    array-length v10, v10

    new-array v1, v10, [B

    .line 71
    .local v1, "byte_array":[B
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_2
    iget-object v10, p0, Lcom/mwr/jdiesel/reflection/types/ReflectedArray;->elements:[Lcom/mwr/jdiesel/reflection/types/ReflectedType;

    array-length v10, v10

    if-lt v5, v10, :cond_2

    move-object v8, v1

    .line 74
    goto :goto_0

    .line 72
    :cond_2
    iget-object v10, p0, Lcom/mwr/jdiesel/reflection/types/ReflectedArray;->elements:[Lcom/mwr/jdiesel/reflection/types/ReflectedType;

    aget-object v10, v10, v5

    invoke-virtual {v10}, Lcom/mwr/jdiesel/reflection/types/ReflectedType;->getNative()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Byte;

    invoke-virtual {v10}, Ljava/lang/Byte;->byteValue()B

    move-result v10

    aput-byte v10, v1, v5

    .line 71
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 77
    .end local v1    # "byte_array":[B
    .end local v5    # "i":I
    :pswitch_2
    iget-object v10, p0, Lcom/mwr/jdiesel/reflection/types/ReflectedArray;->elements:[Lcom/mwr/jdiesel/reflection/types/ReflectedType;

    array-length v10, v10

    new-array v2, v10, [Ljava/lang/Character;

    .line 79
    .local v2, "char_array":[Ljava/lang/Character;
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_3
    iget-object v10, p0, Lcom/mwr/jdiesel/reflection/types/ReflectedArray;->elements:[Lcom/mwr/jdiesel/reflection/types/ReflectedType;

    array-length v10, v10

    if-lt v5, v10, :cond_3

    move-object v8, v2

    .line 82
    goto :goto_0

    .line 80
    :cond_3
    iget-object v10, p0, Lcom/mwr/jdiesel/reflection/types/ReflectedArray;->elements:[Lcom/mwr/jdiesel/reflection/types/ReflectedType;

    aget-object v10, v10, v5

    invoke-virtual {v10}, Lcom/mwr/jdiesel/reflection/types/ReflectedType;->getNative()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Character;

    aput-object v10, v2, v5

    .line 79
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 85
    .end local v2    # "char_array":[Ljava/lang/Character;
    .end local v5    # "i":I
    :pswitch_3
    iget-object v10, p0, Lcom/mwr/jdiesel/reflection/types/ReflectedArray;->elements:[Lcom/mwr/jdiesel/reflection/types/ReflectedType;

    array-length v10, v10

    new-array v3, v10, [Ljava/lang/Double;

    .line 87
    .local v3, "double_array":[Ljava/lang/Double;
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_4
    iget-object v10, p0, Lcom/mwr/jdiesel/reflection/types/ReflectedArray;->elements:[Lcom/mwr/jdiesel/reflection/types/ReflectedType;

    array-length v10, v10

    if-lt v5, v10, :cond_4

    move-object v8, v3

    .line 90
    goto :goto_0

    .line 88
    :cond_4
    iget-object v10, p0, Lcom/mwr/jdiesel/reflection/types/ReflectedArray;->elements:[Lcom/mwr/jdiesel/reflection/types/ReflectedType;

    aget-object v10, v10, v5

    invoke-virtual {v10}, Lcom/mwr/jdiesel/reflection/types/ReflectedType;->getNative()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Double;

    aput-object v10, v3, v5

    .line 87
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 93
    .end local v3    # "double_array":[Ljava/lang/Double;
    .end local v5    # "i":I
    :pswitch_4
    iget-object v10, p0, Lcom/mwr/jdiesel/reflection/types/ReflectedArray;->elements:[Lcom/mwr/jdiesel/reflection/types/ReflectedType;

    array-length v10, v10

    new-array v4, v10, [Ljava/lang/Float;

    .line 95
    .local v4, "float_array":[Ljava/lang/Float;
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_5
    iget-object v10, p0, Lcom/mwr/jdiesel/reflection/types/ReflectedArray;->elements:[Lcom/mwr/jdiesel/reflection/types/ReflectedType;

    array-length v10, v10

    if-lt v5, v10, :cond_5

    move-object v8, v4

    .line 98
    goto/16 :goto_0

    .line 96
    :cond_5
    iget-object v10, p0, Lcom/mwr/jdiesel/reflection/types/ReflectedArray;->elements:[Lcom/mwr/jdiesel/reflection/types/ReflectedType;

    aget-object v10, v10, v5

    invoke-virtual {v10}, Lcom/mwr/jdiesel/reflection/types/ReflectedType;->getNative()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Float;

    aput-object v10, v4, v5

    .line 95
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 101
    .end local v4    # "float_array":[Ljava/lang/Float;
    .end local v5    # "i":I
    :pswitch_5
    iget-object v10, p0, Lcom/mwr/jdiesel/reflection/types/ReflectedArray;->elements:[Lcom/mwr/jdiesel/reflection/types/ReflectedType;

    array-length v10, v10

    new-array v6, v10, [Ljava/lang/Integer;

    .line 103
    .local v6, "int_array":[Ljava/lang/Integer;
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_6
    iget-object v10, p0, Lcom/mwr/jdiesel/reflection/types/ReflectedArray;->elements:[Lcom/mwr/jdiesel/reflection/types/ReflectedType;

    array-length v10, v10

    if-lt v5, v10, :cond_6

    move-object v8, v6

    .line 106
    goto/16 :goto_0

    .line 104
    :cond_6
    iget-object v10, p0, Lcom/mwr/jdiesel/reflection/types/ReflectedArray;->elements:[Lcom/mwr/jdiesel/reflection/types/ReflectedType;

    aget-object v10, v10, v5

    invoke-virtual {v10}, Lcom/mwr/jdiesel/reflection/types/ReflectedType;->getNative()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    aput-object v10, v6, v5

    .line 103
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 109
    .end local v5    # "i":I
    .end local v6    # "int_array":[Ljava/lang/Integer;
    :pswitch_6
    iget-object v10, p0, Lcom/mwr/jdiesel/reflection/types/ReflectedArray;->elements:[Lcom/mwr/jdiesel/reflection/types/ReflectedType;

    array-length v10, v10

    new-array v7, v10, [Ljava/lang/Long;

    .line 111
    .local v7, "long_array":[Ljava/lang/Long;
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_7
    iget-object v10, p0, Lcom/mwr/jdiesel/reflection/types/ReflectedArray;->elements:[Lcom/mwr/jdiesel/reflection/types/ReflectedType;

    array-length v10, v10

    if-lt v5, v10, :cond_7

    move-object v8, v7

    .line 114
    goto/16 :goto_0

    .line 112
    :cond_7
    iget-object v10, p0, Lcom/mwr/jdiesel/reflection/types/ReflectedArray;->elements:[Lcom/mwr/jdiesel/reflection/types/ReflectedType;

    aget-object v10, v10, v5

    invoke-virtual {v10}, Lcom/mwr/jdiesel/reflection/types/ReflectedType;->getNative()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    aput-object v10, v7, v5

    .line 111
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    .line 117
    .end local v5    # "i":I
    .end local v7    # "long_array":[Ljava/lang/Long;
    :pswitch_7
    iget-object v10, p0, Lcom/mwr/jdiesel/reflection/types/ReflectedArray;->elements:[Lcom/mwr/jdiesel/reflection/types/ReflectedType;

    array-length v10, v10

    new-array v9, v10, [Ljava/lang/Short;

    .line 119
    .local v9, "short_array":[Ljava/lang/Short;
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_8
    iget-object v10, p0, Lcom/mwr/jdiesel/reflection/types/ReflectedArray;->elements:[Lcom/mwr/jdiesel/reflection/types/ReflectedType;

    array-length v10, v10

    if-lt v5, v10, :cond_8

    move-object v8, v9

    .line 122
    goto/16 :goto_0

    .line 120
    :cond_8
    iget-object v10, p0, Lcom/mwr/jdiesel/reflection/types/ReflectedArray;->elements:[Lcom/mwr/jdiesel/reflection/types/ReflectedType;

    aget-object v10, v10, v5

    invoke-virtual {v10}, Lcom/mwr/jdiesel/reflection/types/ReflectedType;->getNative()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Short;

    aput-object v10, v9, v5

    .line 119
    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    .line 128
    .end local v5    # "i":I
    .end local v9    # "short_array":[Ljava/lang/Short;
    :cond_9
    iget-object v10, p0, Lcom/mwr/jdiesel/reflection/types/ReflectedArray;->type:Lcom/mwr/jdiesel/api/Protobuf$Message$Array$ArrayType;

    sget-object v11, Lcom/mwr/jdiesel/api/Protobuf$Message$Array$ArrayType;->STRING:Lcom/mwr/jdiesel/api/Protobuf$Message$Array$ArrayType;

    if-ne v10, v11, :cond_a

    .line 129
    iget-object v10, p0, Lcom/mwr/jdiesel/reflection/types/ReflectedArray;->elements:[Lcom/mwr/jdiesel/reflection/types/ReflectedType;

    array-length v10, v10

    new-array v8, v10, [Ljava/lang/String;

    .line 131
    .local v8, "natives":[Ljava/lang/String;
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_9
    iget-object v10, p0, Lcom/mwr/jdiesel/reflection/types/ReflectedArray;->elements:[Lcom/mwr/jdiesel/reflection/types/ReflectedType;

    array-length v10, v10

    if-ge v5, v10, :cond_0

    .line 132
    iget-object v10, p0, Lcom/mwr/jdiesel/reflection/types/ReflectedArray;->elements:[Lcom/mwr/jdiesel/reflection/types/ReflectedType;

    aget-object v10, v10, v5

    invoke-virtual {v10}, Lcom/mwr/jdiesel/reflection/types/ReflectedType;->getNative()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    aput-object v10, v8, v5

    .line 131
    add-int/lit8 v5, v5, 0x1

    goto :goto_9

    .line 137
    .end local v5    # "i":I
    .end local v8    # "natives":[Ljava/lang/String;
    :cond_a
    iget-object v10, p0, Lcom/mwr/jdiesel/reflection/types/ReflectedArray;->elements:[Lcom/mwr/jdiesel/reflection/types/ReflectedType;

    array-length v10, v10

    new-array v8, v10, [Ljava/lang/Object;

    .line 139
    .local v8, "natives":[Ljava/lang/Object;
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_a
    iget-object v10, p0, Lcom/mwr/jdiesel/reflection/types/ReflectedArray;->elements:[Lcom/mwr/jdiesel/reflection/types/ReflectedType;

    array-length v10, v10

    if-ge v5, v10, :cond_0

    .line 140
    iget-object v10, p0, Lcom/mwr/jdiesel/reflection/types/ReflectedArray;->elements:[Lcom/mwr/jdiesel/reflection/types/ReflectedType;

    aget-object v10, v10, v5

    invoke-virtual {v10}, Lcom/mwr/jdiesel/reflection/types/ReflectedType;->getNative()Ljava/lang/Object;

    move-result-object v10

    aput-object v10, v8, v5

    .line 139
    add-int/lit8 v5, v5, 0x1

    goto :goto_a

    .line 59
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
    .line 148
    invoke-static {}, Lcom/mwr/jdiesel/reflection/types/ReflectedArray;->$SWITCH_TABLE$com$mwr$jdiesel$api$Protobuf$Message$Array$ArrayType()[I

    move-result-object v0

    iget-object v1, p0, Lcom/mwr/jdiesel/reflection/types/ReflectedArray;->type:Lcom/mwr/jdiesel/api/Protobuf$Message$Array$ArrayType;

    invoke-virtual {v1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Array$ArrayType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 153
    const-class v0, [Ljava/lang/Object;

    :goto_0
    return-object v0

    .line 149
    :pswitch_0
    const-class v0, [[Ljava/lang/Object;

    goto :goto_0

    .line 150
    :pswitch_1
    const-class v0, [Ljava/lang/Object;

    goto :goto_0

    .line 151
    :pswitch_2
    iget-object v0, p0, Lcom/mwr/jdiesel/reflection/types/ReflectedArray;->elements:[Lcom/mwr/jdiesel/reflection/types/ReflectedType;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Lcom/mwr/jdiesel/reflection/types/ReflectedPrimitive;

    invoke-virtual {v0}, Lcom/mwr/jdiesel/reflection/types/ReflectedPrimitive;->getArrayType()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    .line 152
    :pswitch_3
    const-class v0, [Ljava/lang/String;

    goto :goto_0

    .line 148
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/mwr/jdiesel/reflection/types/ReflectedType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 159
    iget-object v0, p0, Lcom/mwr/jdiesel/reflection/types/ReflectedArray;->elements:[Lcom/mwr/jdiesel/reflection/types/ReflectedType;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 163
    const-string v0, "reflected array"

    return-object v0
.end method
