.class public Lcom/mwr/jdiesel/reflection/types/ReflectedObject;
.super Lcom/mwr/jdiesel/reflection/types/ReflectedType;
.source "ReflectedObject.java"


# instance fields
.field private object:Ljava/lang/Object;

.field private reference:I


# direct methods
.method public constructor <init>(Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;Lcom/mwr/jdiesel/reflection/ObjectStore;)V
    .locals 1
    .param p1, "object"    # Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;
    .param p2, "object_store"    # Lcom/mwr/jdiesel/reflection/ObjectStore;

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/mwr/jdiesel/reflection/types/ReflectedType;-><init>()V

    .line 18
    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;->getReference()I

    move-result v0

    iput v0, p0, Lcom/mwr/jdiesel/reflection/types/ReflectedObject;->reference:I

    .line 19
    iget v0, p0, Lcom/mwr/jdiesel/reflection/types/ReflectedObject;->reference:I

    invoke-virtual {p2, v0}, Lcom/mwr/jdiesel/reflection/ObjectStore;->get(I)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/mwr/jdiesel/reflection/types/ReflectedObject;->object:Ljava/lang/Object;

    .line 20
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/mwr/jdiesel/reflection/types/ReflectedType;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/mwr/jdiesel/reflection/types/ReflectedObject;->object:Ljava/lang/Object;

    .line 14
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iput v0, p0, Lcom/mwr/jdiesel/reflection/types/ReflectedObject;->reference:I

    .line 15
    return-void
.end method


# virtual methods
.method public getArgument()Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;
    .locals 3

    .prologue
    .line 24
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;->newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;

    move-result-object v0

    sget-object v1, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;->OBJECT:Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;

    invoke-virtual {v0, v1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->setType(Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;)Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;

    move-result-object v0

    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;->newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference$Builder;

    move-result-object v1

    iget v2, p0, Lcom/mwr/jdiesel/reflection/types/ReflectedObject;->reference:I

    invoke-virtual {v1, v2}, Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference$Builder;->setReference(I)Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference$Builder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->setObject(Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference$Builder;)Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->build()Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;

    move-result-object v0

    return-object v0
.end method

.method public getNative()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/mwr/jdiesel/reflection/types/ReflectedObject;->object:Ljava/lang/Object;

    return-object v0
.end method

.method public getReference()I
    .locals 1

    .prologue
    .line 28
    iget v0, p0, Lcom/mwr/jdiesel/reflection/types/ReflectedObject;->reference:I

    return v0
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
    .line 38
    iget-object v0, p0, Lcom/mwr/jdiesel/reflection/types/ReflectedObject;->object:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method
