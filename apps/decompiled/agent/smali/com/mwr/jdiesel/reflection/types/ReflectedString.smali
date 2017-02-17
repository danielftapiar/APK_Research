.class public Lcom/mwr/jdiesel/reflection/types/ReflectedString;
.super Lcom/mwr/jdiesel/reflection/types/ReflectedType;
.source "ReflectedString.java"


# instance fields
.field private string:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/mwr/jdiesel/reflection/types/ReflectedType;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/mwr/jdiesel/reflection/types/ReflectedString;->string:Ljava/lang/String;

    .line 11
    return-void
.end method


# virtual methods
.method public getArgument()Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;
    .locals 2

    .prologue
    .line 15
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;->newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;

    move-result-object v0

    sget-object v1, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;->STRING:Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;

    invoke-virtual {v0, v1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->setType(Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$ArgumentType;)Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/mwr/jdiesel/reflection/types/ReflectedString;->string:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->setString(Ljava/lang/String;)Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;->build()Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;

    move-result-object v0

    return-object v0
.end method

.method public getNative()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/mwr/jdiesel/reflection/types/ReflectedString;->string:Ljava/lang/String;

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
    .line 25
    const-class v0, Ljava/lang/String;

    return-object v0
.end method
