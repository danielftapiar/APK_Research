.class public final enum Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$ResponseStatus;
.super Ljava/lang/Enum;
.source "Protobuf.java"

# interfaces
.implements Lcom/google/protobuf/ProtocolMessageEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ResponseStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$ResponseStatus;",
        ">;",
        "Lcom/google/protobuf/ProtocolMessageEnum;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$ResponseStatus;

.field public static final enum ERROR:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$ResponseStatus;

.field public static final ERROR_VALUE:I = 0x2

.field public static final enum FATAL:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$ResponseStatus;

.field public static final FATAL_VALUE:I = 0x3

.field public static final enum SUCCESS:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$ResponseStatus;

.field public static final SUCCESS_VALUE:I = 0x1

.field private static final VALUES:[Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$ResponseStatus;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$ResponseStatus;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final index:I

.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 5132
    new-instance v0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$ResponseStatus;

    const-string v1, "SUCCESS"

    invoke-direct {v0, v1, v4, v4, v2}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$ResponseStatus;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$ResponseStatus;->SUCCESS:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$ResponseStatus;

    .line 5133
    new-instance v0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$ResponseStatus;

    const-string v1, "ERROR"

    invoke-direct {v0, v1, v2, v2, v3}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$ResponseStatus;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$ResponseStatus;->ERROR:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$ResponseStatus;

    .line 5134
    new-instance v0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$ResponseStatus;

    const-string v1, "FATAL"

    invoke-direct {v0, v1, v3, v3, v5}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$ResponseStatus;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$ResponseStatus;->FATAL:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$ResponseStatus;

    new-array v0, v5, [Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$ResponseStatus;

    sget-object v1, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$ResponseStatus;->SUCCESS:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$ResponseStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$ResponseStatus;->ERROR:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$ResponseStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$ResponseStatus;->FATAL:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$ResponseStatus;

    aput-object v1, v0, v3

    sput-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$ResponseStatus;->ENUM$VALUES:[Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$ResponseStatus;

    .line 5159
    new-instance v0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$ResponseStatus$1;

    invoke-direct {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$ResponseStatus$1;-><init>()V

    .line 5158
    sput-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$ResponseStatus;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    .line 5178
    new-array v0, v5, [Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$ResponseStatus;

    .line 5179
    sget-object v1, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$ResponseStatus;->SUCCESS:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$ResponseStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$ResponseStatus;->ERROR:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$ResponseStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$ResponseStatus;->FATAL:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$ResponseStatus;

    aput-object v1, v0, v3

    .line 5178
    sput-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$ResponseStatus;->VALUES:[Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$ResponseStatus;

    .line 5180
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .param p3, "index"    # I
    .param p4, "value"    # I

    .prologue
    .line 5194
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 5195
    iput p3, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$ResponseStatus;->index:I

    .line 5196
    iput p4, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$ResponseStatus;->value:I

    .line 5197
    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 2

    .prologue
    .line 5175
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

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
            "Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$ResponseStatus;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5155
    sget-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$ResponseStatus;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$ResponseStatus;
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 5145
    packed-switch p0, :pswitch_data_0

    .line 5149
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 5146
    :pswitch_0
    sget-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$ResponseStatus;->SUCCESS:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$ResponseStatus;

    goto :goto_0

    .line 5147
    :pswitch_1
    sget-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$ResponseStatus;->ERROR:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$ResponseStatus;

    goto :goto_0

    .line 5148
    :pswitch_2
    sget-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$ResponseStatus;->FATAL:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$ResponseStatus;

    goto :goto_0

    .line 5145
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static valueOf(Lcom/google/protobuf/Descriptors$EnumValueDescriptor;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$ResponseStatus;
    .locals 2
    .param p0, "desc"    # Lcom/google/protobuf/Descriptors$EnumValueDescriptor;

    .prologue
    .line 5184
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getType()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$ResponseStatus;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 5185
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 5186
    const-string v1, "EnumValueDescriptor is not for this type."

    .line 5185
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5188
    :cond_0
    sget-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$ResponseStatus;->VALUES:[Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$ResponseStatus;

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getIndex()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$ResponseStatus;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$ResponseStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$ResponseStatus;

    return-object v0
.end method

.method public static values()[Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$ResponseStatus;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$ResponseStatus;->ENUM$VALUES:[Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$ResponseStatus;

    array-length v1, v0

    new-array v2, v1, [Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$ResponseStatus;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 1

    .prologue
    .line 5171
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$ResponseStatus;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getNumber()I
    .locals 1

    .prologue
    .line 5142
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$ResponseStatus;->value:I

    return v0
.end method

.method public final getValueDescriptor()Lcom/google/protobuf/Descriptors$EnumValueDescriptor;
    .locals 2

    .prologue
    .line 5167
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$ResponseStatus;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$EnumDescriptor;->getValues()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$ResponseStatus;->index:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;

    return-object v0
.end method
