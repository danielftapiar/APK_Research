.class public final enum Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$RequestType;
.super Ljava/lang/Enum;
.source "Protobuf.java"

# interfaces
.implements Lcom/google/protobuf/ProtocolMessageEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RequestType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$RequestType;",
        ">;",
        "Lcom/google/protobuf/ProtocolMessageEnum;"
    }
.end annotation


# static fields
.field public static final enum CONSTRUCT:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$RequestType;

.field public static final CONSTRUCT_VALUE:I = 0x2

.field public static final enum DELETE:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$RequestType;

.field public static final enum DELETE_ALL:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$RequestType;

.field public static final DELETE_ALL_VALUE:I = 0x7

.field public static final DELETE_VALUE:I = 0x6

.field private static final synthetic ENUM$VALUES:[Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$RequestType;

.field public static final enum GET_PROPERTY:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$RequestType;

.field public static final GET_PROPERTY_VALUE:I = 0x5

.field public static final enum INVOKE:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$RequestType;

.field public static final INVOKE_VALUE:I = 0x3

.field public static final enum RESOLVE:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$RequestType;

.field public static final RESOLVE_VALUE:I = 0x1

.field public static final enum SET_PROPERTY:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$RequestType;

.field public static final SET_PROPERTY_VALUE:I = 0x4

.field private static final VALUES:[Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$RequestType;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$RequestType;",
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

    .line 216
    new-instance v0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$RequestType;

    const-string v1, "RESOLVE"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$RequestType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$RequestType;->RESOLVE:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$RequestType;

    .line 217
    new-instance v0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$RequestType;

    const-string v1, "CONSTRUCT"

    invoke-direct {v0, v1, v5, v5, v6}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$RequestType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$RequestType;->CONSTRUCT:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$RequestType;

    .line 218
    new-instance v0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$RequestType;

    const-string v1, "INVOKE"

    invoke-direct {v0, v1, v6, v6, v7}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$RequestType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$RequestType;->INVOKE:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$RequestType;

    .line 219
    new-instance v0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$RequestType;

    const-string v1, "SET_PROPERTY"

    invoke-direct {v0, v1, v7, v7, v8}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$RequestType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$RequestType;->SET_PROPERTY:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$RequestType;

    .line 220
    new-instance v0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$RequestType;

    const-string v1, "GET_PROPERTY"

    invoke-direct {v0, v1, v8, v8, v9}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$RequestType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$RequestType;->GET_PROPERTY:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$RequestType;

    .line 221
    new-instance v0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$RequestType;

    const-string v1, "DELETE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v9, v9, v2}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$RequestType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$RequestType;->DELETE:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$RequestType;

    .line 222
    new-instance v0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$RequestType;

    const-string v1, "DELETE_ALL"

    const/4 v2, 0x6

    const/4 v3, 0x6

    const/4 v4, 0x7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$RequestType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$RequestType;->DELETE_ALL:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$RequestType;

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$RequestType;

    const/4 v1, 0x0

    sget-object v2, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$RequestType;->RESOLVE:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$RequestType;

    aput-object v2, v0, v1

    sget-object v1, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$RequestType;->CONSTRUCT:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$RequestType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$RequestType;->INVOKE:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$RequestType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$RequestType;->SET_PROPERTY:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$RequestType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$RequestType;->GET_PROPERTY:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$RequestType;

    aput-object v1, v0, v8

    sget-object v1, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$RequestType;->DELETE:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$RequestType;

    aput-object v1, v0, v9

    const/4 v1, 0x6

    sget-object v2, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$RequestType;->DELETE_ALL:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$RequestType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$RequestType;->ENUM$VALUES:[Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$RequestType;

    .line 255
    new-instance v0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$RequestType$1;

    invoke-direct {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$RequestType$1;-><init>()V

    .line 254
    sput-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$RequestType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    .line 274
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$RequestType;

    const/4 v1, 0x0

    .line 275
    sget-object v2, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$RequestType;->RESOLVE:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$RequestType;

    aput-object v2, v0, v1

    sget-object v1, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$RequestType;->CONSTRUCT:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$RequestType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$RequestType;->INVOKE:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$RequestType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$RequestType;->SET_PROPERTY:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$RequestType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$RequestType;->GET_PROPERTY:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$RequestType;

    aput-object v1, v0, v8

    sget-object v1, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$RequestType;->DELETE:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$RequestType;

    aput-object v1, v0, v9

    const/4 v1, 0x6

    sget-object v2, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$RequestType;->DELETE_ALL:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$RequestType;

    aput-object v2, v0, v1

    .line 274
    sput-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$RequestType;->VALUES:[Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$RequestType;

    .line 276
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .param p3, "index"    # I
    .param p4, "value"    # I

    .prologue
    .line 290
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 291
    iput p3, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$RequestType;->index:I

    .line 292
    iput p4, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$RequestType;->value:I

    .line 293
    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 2

    .prologue
    .line 271
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

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
            "Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$RequestType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 251
    sget-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$RequestType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$RequestType;
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 237
    packed-switch p0, :pswitch_data_0

    .line 245
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 238
    :pswitch_0
    sget-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$RequestType;->RESOLVE:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$RequestType;

    goto :goto_0

    .line 239
    :pswitch_1
    sget-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$RequestType;->CONSTRUCT:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$RequestType;

    goto :goto_0

    .line 240
    :pswitch_2
    sget-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$RequestType;->INVOKE:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$RequestType;

    goto :goto_0

    .line 241
    :pswitch_3
    sget-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$RequestType;->SET_PROPERTY:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$RequestType;

    goto :goto_0

    .line 242
    :pswitch_4
    sget-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$RequestType;->GET_PROPERTY:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$RequestType;

    goto :goto_0

    .line 243
    :pswitch_5
    sget-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$RequestType;->DELETE:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$RequestType;

    goto :goto_0

    .line 244
    :pswitch_6
    sget-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$RequestType;->DELETE_ALL:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$RequestType;

    goto :goto_0

    .line 237
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public static valueOf(Lcom/google/protobuf/Descriptors$EnumValueDescriptor;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$RequestType;
    .locals 2
    .param p0, "desc"    # Lcom/google/protobuf/Descriptors$EnumValueDescriptor;

    .prologue
    .line 280
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getType()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$RequestType;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 281
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 282
    const-string v1, "EnumValueDescriptor is not for this type."

    .line 281
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 284
    :cond_0
    sget-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$RequestType;->VALUES:[Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$RequestType;

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getIndex()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$RequestType;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$RequestType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$RequestType;

    return-object v0
.end method

.method public static values()[Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$RequestType;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$RequestType;->ENUM$VALUES:[Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$RequestType;

    array-length v1, v0

    new-array v2, v1, [Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$RequestType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 1

    .prologue
    .line 267
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$RequestType;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getNumber()I
    .locals 1

    .prologue
    .line 234
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$RequestType;->value:I

    return v0
.end method

.method public final getValueDescriptor()Lcom/google/protobuf/Descriptors$EnumValueDescriptor;
    .locals 2

    .prologue
    .line 263
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$RequestType;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$EnumDescriptor;->getValues()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$RequestType;->index:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;

    return-object v0
.end method
