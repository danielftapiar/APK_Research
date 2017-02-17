.class public Lcom/mwr/jdiesel/reflection/types/ReflectedBinary;
.super Lcom/mwr/jdiesel/reflection/types/ReflectedType;
.source "ReflectedBinary.java"


# instance fields
.field private bytes:Lcom/google/protobuf/ByteString;


# direct methods
.method public constructor <init>(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .param p1, "bytes"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/mwr/jdiesel/reflection/types/ReflectedType;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/mwr/jdiesel/reflection/types/ReflectedBinary;->bytes:Lcom/google/protobuf/ByteString;

    .line 12
    return-void
.end method

.method public static fromNative([B)Lcom/mwr/jdiesel/reflection/types/ReflectedBinary;
    .locals 2
    .param p0, "bytes"    # [B

    .prologue
    .line 15
    new-instance v0, Lcom/mwr/jdiesel/reflection/types/ReflectedBinary;

    invoke-static {p0}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mwr/jdiesel/reflection/types/ReflectedBinary;-><init>(Lcom/google/protobuf/ByteString;)V

    return-object v0
.end method


# virtual methods
.method public getArgument()Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;
    .locals 2

    .prologue
    .line 20
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;->newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;

    move-result-object v0

    .line 21
    sget-object v1, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;->DATA:Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;

    invoke-virtual {v0, v1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->setType(Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;)Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;

    move-result-object v0

    .line 22
    iget-object v1, p0, Lcom/mwr/jdiesel/reflection/types/ReflectedBinary;->bytes:Lcom/google/protobuf/ByteString;

    invoke-virtual {v0, v1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->setData(Lcom/google/protobuf/ByteString;)Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->build()Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;

    move-result-object v0

    .line 20
    return-object v0
.end method

.method public getNative()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/mwr/jdiesel/reflection/types/ReflectedBinary;->bytes:Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public getType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 32
    const-class v0, [B

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/mwr/jdiesel/reflection/types/ReflectedBinary;->bytes:Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->size()I

    move-result v0

    return v0
.end method
