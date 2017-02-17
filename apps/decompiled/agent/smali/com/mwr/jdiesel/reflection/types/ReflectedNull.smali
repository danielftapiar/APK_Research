.class public Lcom/mwr/jdiesel/reflection/types/ReflectedNull;
.super Lcom/mwr/jdiesel/reflection/types/ReflectedType;
.source "ReflectedNull.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Lcom/mwr/jdiesel/reflection/types/ReflectedType;-><init>()V

    return-void
.end method


# virtual methods
.method public getArgument()Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;
    .locals 2

    .prologue
    .line 9
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;->newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;

    move-result-object v0

    sget-object v1, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;->NULL:Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;

    invoke-virtual {v0, v1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->setType(Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;)Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->build()Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;

    move-result-object v0

    return-object v0
.end method

.method public getNative()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x0

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
    .line 19
    const/4 v0, 0x0

    return-object v0
.end method
