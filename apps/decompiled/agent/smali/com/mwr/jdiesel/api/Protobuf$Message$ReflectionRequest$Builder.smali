.class public final Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "Protobuf.java"

# interfaces
.implements Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;",
        ">;",
        "Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequestOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private constructBuilder_:Lcom/google/protobuf/SingleFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilder",
            "<",
            "Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;",
            "Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;",
            "Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$ConstructOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private construct_:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;

.field private deleteBuilder_:Lcom/google/protobuf/SingleFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilder",
            "<",
            "Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete;",
            "Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete$Builder;",
            "Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$DeleteOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private delete_:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete;

.field private getPropertyBuilder_:Lcom/google/protobuf/SingleFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilder",
            "<",
            "Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty;",
            "Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;",
            "Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetPropertyOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private getProperty_:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty;

.field private invokeBuilder_:Lcom/google/protobuf/SingleFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilder",
            "<",
            "Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke;",
            "Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke$Builder;",
            "Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$InvokeOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private invoke_:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke;

.field private resolveBuilder_:Lcom/google/protobuf/SingleFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilder",
            "<",
            "Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Resolve;",
            "Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Resolve$Builder;",
            "Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$ResolveOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private resolve_:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Resolve;

.field private sessionId_:Ljava/lang/Object;

.field private setPropertyBuilder_:Lcom/google/protobuf/SingleFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilder",
            "<",
            "Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;",
            "Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;",
            "Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetPropertyOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private setProperty_:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;

.field private type_:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$RequestType;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 4140
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 4472
    const-string v0, ""

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->sessionId_:Ljava/lang/Object;

    .line 4508
    sget-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$RequestType;->RESOLVE:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$RequestType;

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->type_:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$RequestType;

    .line 4532
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Resolve;->getDefaultInstance()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Resolve;

    move-result-object v0

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->resolve_:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Resolve;

    .line 4622
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;->getDefaultInstance()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;

    move-result-object v0

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->construct_:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;

    .line 4712
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke;->getDefaultInstance()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke;

    move-result-object v0

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->invoke_:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke;

    .line 4802
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;->getDefaultInstance()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;

    move-result-object v0

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->setProperty_:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;

    .line 4892
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty;->getDefaultInstance()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty;

    move-result-object v0

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->getProperty_:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty;

    .line 4982
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete;->getDefaultInstance()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete;

    move-result-object v0

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->delete_:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete;

    .line 4141
    invoke-direct {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->maybeForceBuilderInitialization()V

    .line 4142
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 4145
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 4472
    const-string v0, ""

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->sessionId_:Ljava/lang/Object;

    .line 4508
    sget-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$RequestType;->RESOLVE:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$RequestType;

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->type_:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$RequestType;

    .line 4532
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Resolve;->getDefaultInstance()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Resolve;

    move-result-object v0

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->resolve_:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Resolve;

    .line 4622
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;->getDefaultInstance()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;

    move-result-object v0

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->construct_:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;

    .line 4712
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke;->getDefaultInstance()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke;

    move-result-object v0

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->invoke_:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke;

    .line 4802
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;->getDefaultInstance()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;

    move-result-object v0

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->setProperty_:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;

    .line 4892
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty;->getDefaultInstance()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty;

    move-result-object v0

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->getProperty_:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty;

    .line 4982
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete;->getDefaultInstance()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete;

    move-result-object v0

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->delete_:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete;

    .line 4146
    invoke-direct {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->maybeForceBuilderInitialization()V

    .line 4147
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;)V
    .locals 0

    .prologue
    .line 4144
    invoke-direct {p0, p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$17(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 4228
    invoke-direct {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->buildParsed()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$18()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;
    .locals 1

    .prologue
    .line 4158
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->create()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 4230
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->buildPartial()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;

    move-result-object v0

    .line 4231
    .local v0, "result":Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;
    invoke-virtual {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4232
    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    .line 4233
    invoke-virtual {v1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    .line 4232
    throw v1

    .line 4235
    :cond_0
    return-object v0
.end method

.method private static create()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;
    .locals 1

    .prologue
    .line 4159
    new-instance v0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;

    invoke-direct {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;-><init>()V

    return-object v0
.end method

.method private getConstructFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilder",
            "<",
            "Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;",
            "Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;",
            "Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$ConstructOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4700
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->constructBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 4701
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilder;

    .line 4703
    iget-object v1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->construct_:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;

    .line 4704
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v2

    .line 4705
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilder;-><init>(Lcom/google/protobuf/GeneratedMessage;Lcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    .line 4701
    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->constructBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    .line 4706
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->construct_:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;

    .line 4708
    :cond_0
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->constructBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    return-object v0
.end method

.method private getDeleteFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilder",
            "<",
            "Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete;",
            "Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete$Builder;",
            "Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$DeleteOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5060
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->deleteBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 5061
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilder;

    .line 5063
    iget-object v1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->delete_:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete;

    .line 5064
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v2

    .line 5065
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilder;-><init>(Lcom/google/protobuf/GeneratedMessage;Lcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    .line 5061
    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->deleteBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    .line 5066
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->delete_:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete;

    .line 5068
    :cond_0
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->deleteBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 4131
    # getter for: Lcom/mwr/jdiesel/api/Protobuf;->internal_static_com_mwr_jdiesel_api_Message_ReflectionRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf;->access$5()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private getGetPropertyFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilder",
            "<",
            "Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty;",
            "Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;",
            "Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetPropertyOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4970
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->getPropertyBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 4971
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilder;

    .line 4973
    iget-object v1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->getProperty_:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty;

    .line 4974
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v2

    .line 4975
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilder;-><init>(Lcom/google/protobuf/GeneratedMessage;Lcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    .line 4971
    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->getPropertyBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    .line 4976
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->getProperty_:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty;

    .line 4978
    :cond_0
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->getPropertyBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    return-object v0
.end method

.method private getInvokeFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilder",
            "<",
            "Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke;",
            "Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke$Builder;",
            "Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$InvokeOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4790
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->invokeBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 4791
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilder;

    .line 4793
    iget-object v1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->invoke_:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke;

    .line 4794
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v2

    .line 4795
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilder;-><init>(Lcom/google/protobuf/GeneratedMessage;Lcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    .line 4791
    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->invokeBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    .line 4796
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->invoke_:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke;

    .line 4798
    :cond_0
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->invokeBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    return-object v0
.end method

.method private getResolveFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilder",
            "<",
            "Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Resolve;",
            "Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Resolve$Builder;",
            "Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$ResolveOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4610
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->resolveBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 4611
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilder;

    .line 4613
    iget-object v1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->resolve_:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Resolve;

    .line 4614
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v2

    .line 4615
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilder;-><init>(Lcom/google/protobuf/GeneratedMessage;Lcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    .line 4611
    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->resolveBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    .line 4616
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->resolve_:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Resolve;

    .line 4618
    :cond_0
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->resolveBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    return-object v0
.end method

.method private getSetPropertyFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilder",
            "<",
            "Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;",
            "Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;",
            "Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetPropertyOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4880
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->setPropertyBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 4881
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilder;

    .line 4883
    iget-object v1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->setProperty_:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;

    .line 4884
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v2

    .line 4885
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilder;-><init>(Lcom/google/protobuf/GeneratedMessage;Lcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    .line 4881
    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->setPropertyBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    .line 4886
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->setProperty_:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;

    .line 4888
    :cond_0
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->setPropertyBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .prologue
    .line 4149
    # getter for: Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;->alwaysUseFieldBuilders:Z
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;->access$7()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4150
    invoke-direct {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->getResolveFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    .line 4151
    invoke-direct {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->getConstructFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    .line 4152
    invoke-direct {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->getInvokeFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    .line 4153
    invoke-direct {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->getSetPropertyFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    .line 4154
    invoke-direct {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->getGetPropertyFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    .line 4155
    invoke-direct {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->getDeleteFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    .line 4157
    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->build()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->build()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;
    .locals 2

    .prologue
    .line 4221
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->buildPartial()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;

    move-result-object v0

    .line 4222
    .local v0, "result":Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;
    invoke-virtual {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4223
    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 4225
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->buildPartial()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->buildPartial()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;
    .locals 5

    .prologue
    .line 4239
    new-instance v1, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;-><init>(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;)V

    .line 4240
    .local v1, "result":Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->bitField0_:I

    .line 4241
    .local v0, "from_bitField0_":I
    const/4 v2, 0x0

    .line 4242
    .local v2, "to_bitField0_":I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 4243
    or-int/lit8 v2, v2, 0x1

    .line 4245
    :cond_0
    iget-object v3, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->sessionId_:Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;->access$9(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;Ljava/lang/Object;)V

    .line 4246
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 4247
    or-int/lit8 v2, v2, 0x2

    .line 4249
    :cond_1
    iget-object v3, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->type_:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$RequestType;

    invoke-static {v1, v3}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;->access$10(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$RequestType;)V

    .line 4250
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 4251
    or-int/lit8 v2, v2, 0x4

    .line 4253
    :cond_2
    iget-object v3, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->resolveBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v3, :cond_8

    .line 4254
    iget-object v3, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->resolve_:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Resolve;

    invoke-static {v1, v3}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;->access$11(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Resolve;)V

    .line 4258
    :goto_0
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 4259
    or-int/lit8 v2, v2, 0x8

    .line 4261
    :cond_3
    iget-object v3, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->constructBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v3, :cond_9

    .line 4262
    iget-object v3, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->construct_:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;

    invoke-static {v1, v3}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;->access$12(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;)V

    .line 4266
    :goto_1
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_4

    .line 4267
    or-int/lit8 v2, v2, 0x10

    .line 4269
    :cond_4
    iget-object v3, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->invokeBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v3, :cond_a

    .line 4270
    iget-object v3, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->invoke_:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke;

    invoke-static {v1, v3}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;->access$13(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke;)V

    .line 4274
    :goto_2
    and-int/lit8 v3, v0, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_5

    .line 4275
    or-int/lit8 v2, v2, 0x20

    .line 4277
    :cond_5
    iget-object v3, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->setPropertyBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v3, :cond_b

    .line 4278
    iget-object v3, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->setProperty_:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;

    invoke-static {v1, v3}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;->access$14(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;)V

    .line 4282
    :goto_3
    and-int/lit8 v3, v0, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_6

    .line 4283
    or-int/lit8 v2, v2, 0x40

    .line 4285
    :cond_6
    iget-object v3, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->getPropertyBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v3, :cond_c

    .line 4286
    iget-object v3, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->getProperty_:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty;

    invoke-static {v1, v3}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;->access$15(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty;)V

    .line 4290
    :goto_4
    and-int/lit16 v3, v0, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_7

    .line 4291
    or-int/lit16 v2, v2, 0x80

    .line 4293
    :cond_7
    iget-object v3, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->deleteBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v3, :cond_d

    .line 4294
    iget-object v3, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->delete_:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete;

    invoke-static {v1, v3}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;->access$16(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete;)V

    .line 4298
    :goto_5
    invoke-static {v1, v2}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;->access$17(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;I)V

    .line 4299
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->onBuilt()V

    .line 4300
    return-object v1

    .line 4256
    :cond_8
    iget-object v3, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->resolveBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v3}, Lcom/google/protobuf/SingleFieldBuilder;->build()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v3

    check-cast v3, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Resolve;

    invoke-static {v1, v3}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;->access$11(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Resolve;)V

    goto :goto_0

    .line 4264
    :cond_9
    iget-object v3, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->constructBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v3}, Lcom/google/protobuf/SingleFieldBuilder;->build()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v3

    check-cast v3, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;

    invoke-static {v1, v3}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;->access$12(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;)V

    goto :goto_1

    .line 4272
    :cond_a
    iget-object v3, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->invokeBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v3}, Lcom/google/protobuf/SingleFieldBuilder;->build()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v3

    check-cast v3, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke;

    invoke-static {v1, v3}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;->access$13(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke;)V

    goto :goto_2

    .line 4280
    :cond_b
    iget-object v3, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->setPropertyBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v3}, Lcom/google/protobuf/SingleFieldBuilder;->build()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v3

    check-cast v3, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;

    invoke-static {v1, v3}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;->access$14(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;)V

    goto :goto_3

    .line 4288
    :cond_c
    iget-object v3, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->getPropertyBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v3}, Lcom/google/protobuf/SingleFieldBuilder;->build()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v3

    check-cast v3, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty;

    invoke-static {v1, v3}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;->access$15(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty;)V

    goto :goto_4

    .line 4296
    :cond_d
    iget-object v3, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->deleteBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v3}, Lcom/google/protobuf/SingleFieldBuilder;->build()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v3

    check-cast v3, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete;

    invoke-static {v1, v3}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;->access$16(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete;)V

    goto :goto_5
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->clear()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->clear()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->clear()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;
    .locals 1

    .prologue
    .line 4163
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 4164
    const-string v0, ""

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->sessionId_:Ljava/lang/Object;

    .line 4165
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->bitField0_:I

    .line 4166
    sget-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$RequestType;->RESOLVE:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$RequestType;

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->type_:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$RequestType;

    .line 4167
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->bitField0_:I

    .line 4168
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->resolveBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 4169
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Resolve;->getDefaultInstance()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Resolve;

    move-result-object v0

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->resolve_:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Resolve;

    .line 4173
    :goto_0
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->bitField0_:I

    .line 4174
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->constructBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    .line 4175
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;->getDefaultInstance()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;

    move-result-object v0

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->construct_:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;

    .line 4179
    :goto_1
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->bitField0_:I

    .line 4180
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->invokeBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_2

    .line 4181
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke;->getDefaultInstance()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke;

    move-result-object v0

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->invoke_:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke;

    .line 4185
    :goto_2
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->bitField0_:I

    .line 4186
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->setPropertyBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_3

    .line 4187
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;->getDefaultInstance()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;

    move-result-object v0

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->setProperty_:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;

    .line 4191
    :goto_3
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->bitField0_:I

    .line 4192
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->getPropertyBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_4

    .line 4193
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty;->getDefaultInstance()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty;

    move-result-object v0

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->getProperty_:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty;

    .line 4197
    :goto_4
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->bitField0_:I

    .line 4198
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->deleteBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_5

    .line 4199
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete;->getDefaultInstance()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete;

    move-result-object v0

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->delete_:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete;

    .line 4203
    :goto_5
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->bitField0_:I

    .line 4204
    return-object p0

    .line 4171
    :cond_0
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->resolveBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0

    .line 4177
    :cond_1
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->constructBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_1

    .line 4183
    :cond_2
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->invokeBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_2

    .line 4189
    :cond_3
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->setPropertyBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_3

    .line 4195
    :cond_4
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->getPropertyBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_4

    .line 4201
    :cond_5
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->deleteBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_5
.end method

.method public clearConstruct()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;
    .locals 1

    .prologue
    .line 4676
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->constructBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 4677
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;->getDefaultInstance()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;

    move-result-object v0

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->construct_:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;

    .line 4678
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->onChanged()V

    .line 4682
    :goto_0
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->bitField0_:I

    .line 4683
    return-object p0

    .line 4680
    :cond_0
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->constructBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public clearDelete()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;
    .locals 1

    .prologue
    .line 5036
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->deleteBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 5037
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete;->getDefaultInstance()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete;

    move-result-object v0

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->delete_:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete;

    .line 5038
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->onChanged()V

    .line 5042
    :goto_0
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->bitField0_:I

    .line 5043
    return-object p0

    .line 5040
    :cond_0
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->deleteBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public clearGetProperty()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;
    .locals 1

    .prologue
    .line 4946
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->getPropertyBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 4947
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty;->getDefaultInstance()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty;

    move-result-object v0

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->getProperty_:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty;

    .line 4948
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->onChanged()V

    .line 4952
    :goto_0
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->bitField0_:I

    .line 4953
    return-object p0

    .line 4950
    :cond_0
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->getPropertyBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public clearInvoke()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;
    .locals 1

    .prologue
    .line 4766
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->invokeBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 4767
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke;->getDefaultInstance()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke;

    move-result-object v0

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->invoke_:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke;

    .line 4768
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->onChanged()V

    .line 4772
    :goto_0
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->bitField0_:I

    .line 4773
    return-object p0

    .line 4770
    :cond_0
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->invokeBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public clearResolve()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;
    .locals 1

    .prologue
    .line 4586
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->resolveBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 4587
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Resolve;->getDefaultInstance()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Resolve;

    move-result-object v0

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->resolve_:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Resolve;

    .line 4588
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->onChanged()V

    .line 4592
    :goto_0
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->bitField0_:I

    .line 4593
    return-object p0

    .line 4590
    :cond_0
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->resolveBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public clearSessionId()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;
    .locals 1

    .prologue
    .line 4496
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->bitField0_:I

    .line 4497
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;->getDefaultInstance()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;->getSessionId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->sessionId_:Ljava/lang/Object;

    .line 4498
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->onChanged()V

    .line 4499
    return-object p0
.end method

.method public clearSetProperty()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;
    .locals 1

    .prologue
    .line 4856
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->setPropertyBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 4857
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;->getDefaultInstance()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;

    move-result-object v0

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->setProperty_:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;

    .line 4858
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->onChanged()V

    .line 4862
    :goto_0
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->bitField0_:I

    .line 4863
    return-object p0

    .line 4860
    :cond_0
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->setPropertyBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public clearType()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;
    .locals 1

    .prologue
    .line 4525
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->bitField0_:I

    .line 4526
    sget-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$RequestType;->RESOLVE:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$RequestType;

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->type_:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$RequestType;

    .line 4527
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->onChanged()V

    .line 4528
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->clone()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->clone()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->clone()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;
    .locals 2

    .prologue
    .line 4208
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->create()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->buildPartial()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->mergeFrom(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getConstruct()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;
    .locals 1

    .prologue
    .line 4629
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->constructBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 4630
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->construct_:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;

    .line 4632
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->constructBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessage()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;

    goto :goto_0
.end method

.method public getConstructBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;
    .locals 1

    .prologue
    .line 4686
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->bitField0_:I

    .line 4687
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->onChanged()V

    .line 4688
    invoke-direct {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->getConstructFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getBuilder()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;

    return-object v0
.end method

.method public getConstructOrBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$ConstructOrBuilder;
    .locals 1

    .prologue
    .line 4691
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->constructBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-eqz v0, :cond_0

    .line 4692
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->constructBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$ConstructOrBuilder;

    .line 4694
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->construct_:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;

    goto :goto_0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->getDefaultInstanceForType()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->getDefaultInstanceForType()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;
    .locals 1

    .prologue
    .line 4217
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;->getDefaultInstance()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDelete()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete;
    .locals 1

    .prologue
    .line 4989
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->deleteBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 4990
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->delete_:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete;

    .line 4992
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->deleteBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessage()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete;

    goto :goto_0
.end method

.method public getDeleteBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete$Builder;
    .locals 1

    .prologue
    .line 5046
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->bitField0_:I

    .line 5047
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->onChanged()V

    .line 5048
    invoke-direct {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->getDeleteFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getBuilder()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete$Builder;

    return-object v0
.end method

.method public getDeleteOrBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$DeleteOrBuilder;
    .locals 1

    .prologue
    .line 5051
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->deleteBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-eqz v0, :cond_0

    .line 5052
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->deleteBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$DeleteOrBuilder;

    .line 5054
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->delete_:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete;

    goto :goto_0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 4213
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getGetProperty()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty;
    .locals 1

    .prologue
    .line 4899
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->getPropertyBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 4900
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->getProperty_:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty;

    .line 4902
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->getPropertyBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessage()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty;

    goto :goto_0
.end method

.method public getGetPropertyBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;
    .locals 1

    .prologue
    .line 4956
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->bitField0_:I

    .line 4957
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->onChanged()V

    .line 4958
    invoke-direct {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->getGetPropertyFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getBuilder()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;

    return-object v0
.end method

.method public getGetPropertyOrBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetPropertyOrBuilder;
    .locals 1

    .prologue
    .line 4961
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->getPropertyBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-eqz v0, :cond_0

    .line 4962
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->getPropertyBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetPropertyOrBuilder;

    .line 4964
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->getProperty_:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty;

    goto :goto_0
.end method

.method public getInvoke()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke;
    .locals 1

    .prologue
    .line 4719
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->invokeBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 4720
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->invoke_:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke;

    .line 4722
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->invokeBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessage()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke;

    goto :goto_0
.end method

.method public getInvokeBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke$Builder;
    .locals 1

    .prologue
    .line 4776
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->bitField0_:I

    .line 4777
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->onChanged()V

    .line 4778
    invoke-direct {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->getInvokeFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getBuilder()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke$Builder;

    return-object v0
.end method

.method public getInvokeOrBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$InvokeOrBuilder;
    .locals 1

    .prologue
    .line 4781
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->invokeBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-eqz v0, :cond_0

    .line 4782
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->invokeBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$InvokeOrBuilder;

    .line 4784
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->invoke_:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke;

    goto :goto_0
.end method

.method public getResolve()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Resolve;
    .locals 1

    .prologue
    .line 4539
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->resolveBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 4540
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->resolve_:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Resolve;

    .line 4542
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->resolveBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessage()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Resolve;

    goto :goto_0
.end method

.method public getResolveBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Resolve$Builder;
    .locals 1

    .prologue
    .line 4596
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->bitField0_:I

    .line 4597
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->onChanged()V

    .line 4598
    invoke-direct {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->getResolveFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getBuilder()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Resolve$Builder;

    return-object v0
.end method

.method public getResolveOrBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$ResolveOrBuilder;
    .locals 1

    .prologue
    .line 4601
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->resolveBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-eqz v0, :cond_0

    .line 4602
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->resolveBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$ResolveOrBuilder;

    .line 4604
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->resolve_:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Resolve;

    goto :goto_0
.end method

.method public getSessionId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 4477
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->sessionId_:Ljava/lang/Object;

    .line 4478
    .local v0, "ref":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 4479
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0    # "ref":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 4480
    .local v1, "s":Ljava/lang/String;
    iput-object v1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->sessionId_:Ljava/lang/Object;

    .line 4483
    .end local v1    # "s":Ljava/lang/String;
    :goto_0
    return-object v1

    .restart local v0    # "ref":Ljava/lang/Object;
    :cond_0
    check-cast v0, Ljava/lang/String;

    .end local v0    # "ref":Ljava/lang/Object;
    move-object v1, v0

    goto :goto_0
.end method

.method public getSetProperty()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;
    .locals 1

    .prologue
    .line 4809
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->setPropertyBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 4810
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->setProperty_:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;

    .line 4812
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->setPropertyBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessage()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;

    goto :goto_0
.end method

.method public getSetPropertyBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;
    .locals 1

    .prologue
    .line 4866
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->bitField0_:I

    .line 4867
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->onChanged()V

    .line 4868
    invoke-direct {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->getSetPropertyFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getBuilder()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;

    return-object v0
.end method

.method public getSetPropertyOrBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetPropertyOrBuilder;
    .locals 1

    .prologue
    .line 4871
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->setPropertyBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-eqz v0, :cond_0

    .line 4872
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->setPropertyBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetPropertyOrBuilder;

    .line 4874
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->setProperty_:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;

    goto :goto_0
.end method

.method public getType()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$RequestType;
    .locals 1

    .prologue
    .line 4513
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->type_:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$RequestType;

    return-object v0
.end method

.method public hasConstruct()Z
    .locals 2

    .prologue
    .line 4626
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasDelete()Z
    .locals 2

    .prologue
    .line 4986
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasGetProperty()Z
    .locals 2

    .prologue
    .line 4896
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasInvoke()Z
    .locals 2

    .prologue
    .line 4716
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasResolve()Z
    .locals 2

    .prologue
    .line 4536
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSessionId()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 4474
    iget v1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSetProperty()Z
    .locals 2

    .prologue
    .line 4806
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasType()Z
    .locals 2

    .prologue
    .line 4510
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 4136
    # getter for: Lcom/mwr/jdiesel/api/Protobuf;->internal_static_com_mwr_jdiesel_api_Message_ReflectionRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf;->access$61()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 4343
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->hasSessionId()Z

    move-result v1

    if-nez v1, :cond_1

    .line 4369
    :cond_0
    :goto_0
    return v0

    .line 4347
    :cond_1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->hasType()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4351
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->hasConstruct()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4352
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->getConstruct()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4357
    :cond_2
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->hasInvoke()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4358
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->getInvoke()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4363
    :cond_3
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->hasSetProperty()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 4364
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->getSetProperty()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4369
    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public mergeConstruct(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;
    .locals 2
    .param p1, "value"    # Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;

    .prologue
    .line 4660
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->constructBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    .line 4661
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 4662
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->construct_:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;

    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;->getDefaultInstance()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 4664
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->construct_:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;

    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;->newBuilder(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;->mergeFrom(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;->buildPartial()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;

    move-result-object v0

    .line 4663
    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->construct_:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;

    .line 4668
    :goto_0
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->onChanged()V

    .line 4672
    :goto_1
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->bitField0_:I

    .line 4673
    return-object p0

    .line 4666
    :cond_0
    iput-object p1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->construct_:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;

    goto :goto_0

    .line 4670
    :cond_1
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->constructBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->mergeFrom(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_1
.end method

.method public mergeDelete(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;
    .locals 2
    .param p1, "value"    # Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete;

    .prologue
    .line 5020
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->deleteBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    .line 5021
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_0

    .line 5022
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->delete_:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete;

    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete;->getDefaultInstance()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 5024
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->delete_:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete;

    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete;->newBuilder(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete$Builder;->mergeFrom(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete$Builder;->buildPartial()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete;

    move-result-object v0

    .line 5023
    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->delete_:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete;

    .line 5028
    :goto_0
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->onChanged()V

    .line 5032
    :goto_1
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->bitField0_:I

    .line 5033
    return-object p0

    .line 5026
    :cond_0
    iput-object p1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->delete_:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete;

    goto :goto_0

    .line 5030
    :cond_1
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->deleteBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->mergeFrom(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;
    .locals 6
    .param p1, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4378
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v5

    .line 4377
    invoke-static {v5}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v3

    .line 4380
    .local v3, "unknownFields":Lcom/google/protobuf/UnknownFieldSet$Builder;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    .line 4381
    .local v2, "tag":I
    sparse-switch v2, :sswitch_data_0

    .line 4387
    invoke-virtual {p0, p1, v3, p2, v2}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v5

    .line 4388
    if-nez v5, :cond_0

    .line 4389
    invoke-virtual {v3}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 4390
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->onChanged()V

    .line 4391
    :goto_1
    return-object p0

    .line 4383
    :sswitch_0
    invoke-virtual {v3}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 4384
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->onChanged()V

    goto :goto_1

    .line 4396
    :sswitch_1
    iget v5, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->bitField0_:I

    or-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->bitField0_:I

    .line 4397
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    iput-object v5, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->sessionId_:Ljava/lang/Object;

    goto :goto_0

    .line 4401
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 4402
    .local v0, "rawValue":I
    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$RequestType;->valueOf(I)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$RequestType;

    move-result-object v4

    .line 4403
    .local v4, "value":Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$RequestType;
    if-nez v4, :cond_1

    .line 4404
    const/4 v5, 0x2

    invoke-virtual {v3, v5, v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/google/protobuf/UnknownFieldSet$Builder;

    goto :goto_0

    .line 4406
    :cond_1
    iget v5, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->bitField0_:I

    or-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->bitField0_:I

    .line 4407
    iput-object v4, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->type_:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$RequestType;

    goto :goto_0

    .line 4412
    .end local v0    # "rawValue":I
    .end local v4    # "value":Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$RequestType;
    :sswitch_3
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Resolve;->newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Resolve$Builder;

    move-result-object v1

    .line 4413
    .local v1, "subBuilder":Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Resolve$Builder;
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->hasResolve()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 4414
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->getResolve()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Resolve;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Resolve$Builder;->mergeFrom(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Resolve;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Resolve$Builder;

    .line 4416
    :cond_2
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 4417
    invoke-virtual {v1}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Resolve$Builder;->buildPartial()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Resolve;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->setResolve(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Resolve;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;

    goto :goto_0

    .line 4421
    .end local v1    # "subBuilder":Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Resolve$Builder;
    :sswitch_4
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;->newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;

    move-result-object v1

    .line 4422
    .local v1, "subBuilder":Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->hasConstruct()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 4423
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->getConstruct()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;->mergeFrom(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;

    .line 4425
    :cond_3
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 4426
    invoke-virtual {v1}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;->buildPartial()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->setConstruct(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;

    goto :goto_0

    .line 4430
    .end local v1    # "subBuilder":Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;
    :sswitch_5
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke;->newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke$Builder;

    move-result-object v1

    .line 4431
    .local v1, "subBuilder":Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke$Builder;
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->hasInvoke()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 4432
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->getInvoke()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke$Builder;->mergeFrom(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke$Builder;

    .line 4434
    :cond_4
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 4435
    invoke-virtual {v1}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke$Builder;->buildPartial()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->setInvoke(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;

    goto/16 :goto_0

    .line 4439
    .end local v1    # "subBuilder":Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke$Builder;
    :sswitch_6
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;->newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;

    move-result-object v1

    .line 4440
    .local v1, "subBuilder":Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->hasSetProperty()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 4441
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->getSetProperty()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;->mergeFrom(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;

    .line 4443
    :cond_5
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 4444
    invoke-virtual {v1}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;->buildPartial()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->setSetProperty(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;

    goto/16 :goto_0

    .line 4448
    .end local v1    # "subBuilder":Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;
    :sswitch_7
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty;->newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;

    move-result-object v1

    .line 4449
    .local v1, "subBuilder":Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->hasGetProperty()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 4450
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->getGetProperty()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;->mergeFrom(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;

    .line 4452
    :cond_6
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 4453
    invoke-virtual {v1}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;->buildPartial()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->setGetProperty(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;

    goto/16 :goto_0

    .line 4457
    .end local v1    # "subBuilder":Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;
    :sswitch_8
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete;->newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete$Builder;

    move-result-object v1

    .line 4458
    .local v1, "subBuilder":Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete$Builder;
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->hasDelete()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 4459
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->getDelete()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete$Builder;->mergeFrom(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete$Builder;

    .line 4461
    :cond_7
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 4462
    invoke-virtual {v1}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete$Builder;->buildPartial()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->setDelete(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;

    goto/16 :goto_0

    .line 4381
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
        0x42 -> :sswitch_8
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;
    .locals 1
    .param p1, "other"    # Lcom/google/protobuf/Message;

    .prologue
    .line 4304
    instance-of v0, p1, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;

    if-eqz v0, :cond_0

    .line 4305
    check-cast p1, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;

    .end local p1    # "other":Lcom/google/protobuf/Message;
    invoke-virtual {p0, p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->mergeFrom(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;

    move-result-object p0

    .line 4308
    .end local p0    # "this":Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;
    :goto_0
    return-object p0

    .line 4307
    .restart local p0    # "this":Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;
    .restart local p1    # "other":Lcom/google/protobuf/Message;
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;
    .locals 1
    .param p1, "other"    # Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;

    .prologue
    .line 4313
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;->getDefaultInstance()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 4339
    :goto_0
    return-object p0

    .line 4314
    :cond_0
    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;->hasSessionId()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4315
    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;->getSessionId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->setSessionId(Ljava/lang/String;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;

    .line 4317
    :cond_1
    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;->hasType()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4318
    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;->getType()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$RequestType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->setType(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$RequestType;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;

    .line 4320
    :cond_2
    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;->hasResolve()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4321
    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;->getResolve()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Resolve;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->mergeResolve(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Resolve;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;

    .line 4323
    :cond_3
    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;->hasConstruct()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4324
    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;->getConstruct()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->mergeConstruct(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;

    .line 4326
    :cond_4
    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;->hasInvoke()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 4327
    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;->getInvoke()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->mergeInvoke(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;

    .line 4329
    :cond_5
    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;->hasSetProperty()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 4330
    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;->getSetProperty()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->mergeSetProperty(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;

    .line 4332
    :cond_6
    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;->hasGetProperty()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 4333
    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;->getGetProperty()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->mergeGetProperty(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;

    .line 4335
    :cond_7
    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;->hasDelete()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 4336
    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;->getDelete()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->mergeDelete(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;

    .line 4338
    :cond_8
    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public mergeGetProperty(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;
    .locals 2
    .param p1, "value"    # Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty;

    .prologue
    .line 4930
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->getPropertyBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    .line 4931
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    .line 4932
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->getProperty_:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty;

    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty;->getDefaultInstance()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 4934
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->getProperty_:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty;

    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty;->newBuilder(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;->mergeFrom(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;->buildPartial()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty;

    move-result-object v0

    .line 4933
    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->getProperty_:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty;

    .line 4938
    :goto_0
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->onChanged()V

    .line 4942
    :goto_1
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->bitField0_:I

    .line 4943
    return-object p0

    .line 4936
    :cond_0
    iput-object p1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->getProperty_:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty;

    goto :goto_0

    .line 4940
    :cond_1
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->getPropertyBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->mergeFrom(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_1
.end method

.method public mergeInvoke(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;
    .locals 2
    .param p1, "value"    # Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke;

    .prologue
    .line 4750
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->invokeBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    .line 4751
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    .line 4752
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->invoke_:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke;

    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke;->getDefaultInstance()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 4754
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->invoke_:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke;

    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke;->newBuilder(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke$Builder;->mergeFrom(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke$Builder;->buildPartial()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke;

    move-result-object v0

    .line 4753
    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->invoke_:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke;

    .line 4758
    :goto_0
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->onChanged()V

    .line 4762
    :goto_1
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->bitField0_:I

    .line 4763
    return-object p0

    .line 4756
    :cond_0
    iput-object p1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->invoke_:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke;

    goto :goto_0

    .line 4760
    :cond_1
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->invokeBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->mergeFrom(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_1
.end method

.method public mergeResolve(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Resolve;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;
    .locals 2
    .param p1, "value"    # Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Resolve;

    .prologue
    .line 4570
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->resolveBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    .line 4571
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 4572
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->resolve_:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Resolve;

    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Resolve;->getDefaultInstance()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Resolve;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 4574
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->resolve_:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Resolve;

    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Resolve;->newBuilder(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Resolve;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Resolve$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Resolve$Builder;->mergeFrom(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Resolve;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Resolve$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Resolve$Builder;->buildPartial()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Resolve;

    move-result-object v0

    .line 4573
    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->resolve_:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Resolve;

    .line 4578
    :goto_0
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->onChanged()V

    .line 4582
    :goto_1
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->bitField0_:I

    .line 4583
    return-object p0

    .line 4576
    :cond_0
    iput-object p1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->resolve_:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Resolve;

    goto :goto_0

    .line 4580
    :cond_1
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->resolveBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->mergeFrom(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_1
.end method

.method public mergeSetProperty(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;
    .locals 2
    .param p1, "value"    # Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;

    .prologue
    .line 4840
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->setPropertyBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    .line 4841
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    .line 4842
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->setProperty_:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;

    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;->getDefaultInstance()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 4844
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->setProperty_:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;

    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;->newBuilder(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;->mergeFrom(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;->buildPartial()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;

    move-result-object v0

    .line 4843
    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->setProperty_:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;

    .line 4848
    :goto_0
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->onChanged()V

    .line 4852
    :goto_1
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->bitField0_:I

    .line 4853
    return-object p0

    .line 4846
    :cond_0
    iput-object p1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->setProperty_:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;

    goto :goto_0

    .line 4850
    :cond_1
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->setPropertyBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->mergeFrom(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_1
.end method

.method public setConstruct(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;

    .prologue
    .line 4650
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->constructBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 4651
    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;->build()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;

    move-result-object v0

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->construct_:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;

    .line 4652
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->onChanged()V

    .line 4656
    :goto_0
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->bitField0_:I

    .line 4657
    return-object p0

    .line 4654
    :cond_0
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->constructBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;->build()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public setConstruct(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;
    .locals 1
    .param p1, "value"    # Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;

    .prologue
    .line 4636
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->constructBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    .line 4637
    if-nez p1, :cond_0

    .line 4638
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4640
    :cond_0
    iput-object p1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->construct_:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;

    .line 4641
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->onChanged()V

    .line 4645
    :goto_0
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->bitField0_:I

    .line 4646
    return-object p0

    .line 4643
    :cond_1
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->constructBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public setDelete(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete$Builder;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete$Builder;

    .prologue
    .line 5010
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->deleteBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 5011
    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete$Builder;->build()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete;

    move-result-object v0

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->delete_:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete;

    .line 5012
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->onChanged()V

    .line 5016
    :goto_0
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->bitField0_:I

    .line 5017
    return-object p0

    .line 5014
    :cond_0
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->deleteBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete$Builder;->build()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public setDelete(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;
    .locals 1
    .param p1, "value"    # Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete;

    .prologue
    .line 4996
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->deleteBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    .line 4997
    if-nez p1, :cond_0

    .line 4998
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5000
    :cond_0
    iput-object p1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->delete_:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete;

    .line 5001
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->onChanged()V

    .line 5005
    :goto_0
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->bitField0_:I

    .line 5006
    return-object p0

    .line 5003
    :cond_1
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->deleteBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public setGetProperty(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;

    .prologue
    .line 4920
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->getPropertyBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 4921
    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;->build()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty;

    move-result-object v0

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->getProperty_:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty;

    .line 4922
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->onChanged()V

    .line 4926
    :goto_0
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->bitField0_:I

    .line 4927
    return-object p0

    .line 4924
    :cond_0
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->getPropertyBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;->build()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public setGetProperty(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;
    .locals 1
    .param p1, "value"    # Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty;

    .prologue
    .line 4906
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->getPropertyBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    .line 4907
    if-nez p1, :cond_0

    .line 4908
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4910
    :cond_0
    iput-object p1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->getProperty_:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty;

    .line 4911
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->onChanged()V

    .line 4915
    :goto_0
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->bitField0_:I

    .line 4916
    return-object p0

    .line 4913
    :cond_1
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->getPropertyBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public setInvoke(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke$Builder;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke$Builder;

    .prologue
    .line 4740
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->invokeBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 4741
    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke$Builder;->build()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke;

    move-result-object v0

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->invoke_:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke;

    .line 4742
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->onChanged()V

    .line 4746
    :goto_0
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->bitField0_:I

    .line 4747
    return-object p0

    .line 4744
    :cond_0
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->invokeBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke$Builder;->build()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public setInvoke(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;
    .locals 1
    .param p1, "value"    # Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke;

    .prologue
    .line 4726
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->invokeBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    .line 4727
    if-nez p1, :cond_0

    .line 4728
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4730
    :cond_0
    iput-object p1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->invoke_:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke;

    .line 4731
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->onChanged()V

    .line 4735
    :goto_0
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->bitField0_:I

    .line 4736
    return-object p0

    .line 4733
    :cond_1
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->invokeBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public setResolve(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Resolve$Builder;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Resolve$Builder;

    .prologue
    .line 4560
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->resolveBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 4561
    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Resolve$Builder;->build()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Resolve;

    move-result-object v0

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->resolve_:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Resolve;

    .line 4562
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->onChanged()V

    .line 4566
    :goto_0
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->bitField0_:I

    .line 4567
    return-object p0

    .line 4564
    :cond_0
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->resolveBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Resolve$Builder;->build()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Resolve;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public setResolve(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Resolve;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;
    .locals 1
    .param p1, "value"    # Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Resolve;

    .prologue
    .line 4546
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->resolveBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    .line 4547
    if-nez p1, :cond_0

    .line 4548
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4550
    :cond_0
    iput-object p1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->resolve_:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Resolve;

    .line 4551
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->onChanged()V

    .line 4555
    :goto_0
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->bitField0_:I

    .line 4556
    return-object p0

    .line 4553
    :cond_1
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->resolveBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public setSessionId(Ljava/lang/String;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 4487
    if-nez p1, :cond_0

    .line 4488
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4490
    :cond_0
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->bitField0_:I

    .line 4491
    iput-object p1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->sessionId_:Ljava/lang/Object;

    .line 4492
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->onChanged()V

    .line 4493
    return-object p0
.end method

.method setSessionId(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 4502
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->bitField0_:I

    .line 4503
    iput-object p1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->sessionId_:Ljava/lang/Object;

    .line 4504
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->onChanged()V

    .line 4505
    return-void
.end method

.method public setSetProperty(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;

    .prologue
    .line 4830
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->setPropertyBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 4831
    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;->build()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;

    move-result-object v0

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->setProperty_:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;

    .line 4832
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->onChanged()V

    .line 4836
    :goto_0
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->bitField0_:I

    .line 4837
    return-object p0

    .line 4834
    :cond_0
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->setPropertyBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;->build()Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public setSetProperty(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;
    .locals 1
    .param p1, "value"    # Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;

    .prologue
    .line 4816
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->setPropertyBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    .line 4817
    if-nez p1, :cond_0

    .line 4818
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4820
    :cond_0
    iput-object p1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->setProperty_:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;

    .line 4821
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->onChanged()V

    .line 4825
    :goto_0
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->bitField0_:I

    .line 4826
    return-object p0

    .line 4823
    :cond_1
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->setPropertyBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public setType(Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$RequestType;)Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;
    .locals 1
    .param p1, "value"    # Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$RequestType;

    .prologue
    .line 4516
    if-nez p1, :cond_0

    .line 4517
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4519
    :cond_0
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->bitField0_:I

    .line 4520
    iput-object p1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->type_:Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$RequestType;

    .line 4521
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;->onChanged()V

    .line 4522
    return-object p0
.end method
