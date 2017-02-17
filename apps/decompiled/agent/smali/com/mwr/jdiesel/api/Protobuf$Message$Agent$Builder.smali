.class public final Lcom/mwr/jdiesel/api/Protobuf$Message$Agent$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "Protobuf.java"

# interfaces
.implements Lcom/mwr/jdiesel/api/Protobuf$Message$AgentOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/mwr/jdiesel/api/Protobuf$Message$Agent$Builder;",
        ">;",
        "Lcom/mwr/jdiesel/api/Protobuf$Message$AgentOrBuilder;"
    }
.end annotation


# instance fields
.field private agentVersion_:Ljava/lang/Object;

.field private bitField0_:I

.field private pkgName_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 10996
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 11142
    const-string v0, ""

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Agent$Builder;->pkgName_:Ljava/lang/Object;

    .line 11178
    const-string v0, ""

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Agent$Builder;->agentVersion_:Ljava/lang/Object;

    .line 10997
    invoke-direct {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Agent$Builder;->maybeForceBuilderInitialization()V

    .line 10998
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 11001
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 11142
    const-string v0, ""

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Agent$Builder;->pkgName_:Ljava/lang/Object;

    .line 11178
    const-string v0, ""

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Agent$Builder;->agentVersion_:Ljava/lang/Object;

    .line 11002
    invoke-direct {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Agent$Builder;->maybeForceBuilderInitialization()V

    .line 11003
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/mwr/jdiesel/api/Protobuf$Message$Agent$Builder;)V
    .locals 0

    .prologue
    .line 11000
    invoke-direct {p0, p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Agent$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$17(Lcom/mwr/jdiesel/api/Protobuf$Message$Agent$Builder;)Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 11042
    invoke-direct {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Agent$Builder;->buildParsed()Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$18()Lcom/mwr/jdiesel/api/Protobuf$Message$Agent$Builder;
    .locals 1

    .prologue
    .line 11008
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$Agent$Builder;->create()Lcom/mwr/jdiesel/api/Protobuf$Message$Agent$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 11044
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Agent$Builder;->buildPartial()Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;

    move-result-object v0

    .line 11045
    .local v0, "result":Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;
    invoke-virtual {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 11046
    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Agent$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    .line 11047
    invoke-virtual {v1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    .line 11046
    throw v1

    .line 11049
    :cond_0
    return-object v0
.end method

.method private static create()Lcom/mwr/jdiesel/api/Protobuf$Message$Agent$Builder;
    .locals 1

    .prologue
    .line 11009
    new-instance v0, Lcom/mwr/jdiesel/api/Protobuf$Message$Agent$Builder;

    invoke-direct {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Agent$Builder;-><init>()V

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 10987
    # getter for: Lcom/mwr/jdiesel/api/Protobuf;->internal_static_com_mwr_jdiesel_api_Message_Agent_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf;->access$44()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 11005
    # getter for: Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;->alwaysUseFieldBuilders:Z
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;->access$7()Z

    .line 11007
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Agent$Builder;->build()Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Agent$Builder;->build()Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;
    .locals 2

    .prologue
    .line 11035
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Agent$Builder;->buildPartial()Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;

    move-result-object v0

    .line 11036
    .local v0, "result":Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;
    invoke-virtual {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 11037
    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Agent$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 11039
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Agent$Builder;->buildPartial()Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Agent$Builder;->buildPartial()Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;
    .locals 5

    .prologue
    .line 11053
    new-instance v1, Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;-><init>(Lcom/mwr/jdiesel/api/Protobuf$Message$Agent$Builder;Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;)V

    .line 11054
    .local v1, "result":Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Agent$Builder;->bitField0_:I

    .line 11055
    .local v0, "from_bitField0_":I
    const/4 v2, 0x0

    .line 11056
    .local v2, "to_bitField0_":I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 11057
    or-int/lit8 v2, v2, 0x1

    .line 11059
    :cond_0
    iget-object v3, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Agent$Builder;->pkgName_:Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;->access$9(Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;Ljava/lang/Object;)V

    .line 11060
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 11061
    or-int/lit8 v2, v2, 0x2

    .line 11063
    :cond_1
    iget-object v3, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Agent$Builder;->agentVersion_:Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;->access$10(Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;Ljava/lang/Object;)V

    .line 11064
    invoke-static {v1, v2}, Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;->access$11(Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;I)V

    .line 11065
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Agent$Builder;->onBuilt()V

    .line 11066
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Agent$Builder;->clear()Lcom/mwr/jdiesel/api/Protobuf$Message$Agent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Agent$Builder;->clear()Lcom/mwr/jdiesel/api/Protobuf$Message$Agent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Agent$Builder;->clear()Lcom/mwr/jdiesel/api/Protobuf$Message$Agent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/mwr/jdiesel/api/Protobuf$Message$Agent$Builder;
    .locals 1

    .prologue
    .line 11013
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 11014
    const-string v0, ""

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Agent$Builder;->pkgName_:Ljava/lang/Object;

    .line 11015
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Agent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Agent$Builder;->bitField0_:I

    .line 11016
    const-string v0, ""

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Agent$Builder;->agentVersion_:Ljava/lang/Object;

    .line 11017
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Agent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Agent$Builder;->bitField0_:I

    .line 11018
    return-object p0
.end method

.method public clearAgentVersion()Lcom/mwr/jdiesel/api/Protobuf$Message$Agent$Builder;
    .locals 1

    .prologue
    .line 11202
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Agent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Agent$Builder;->bitField0_:I

    .line 11203
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;->getDefaultInstance()Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;->getAgentVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Agent$Builder;->agentVersion_:Ljava/lang/Object;

    .line 11204
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Agent$Builder;->onChanged()V

    .line 11205
    return-object p0
.end method

.method public clearPkgName()Lcom/mwr/jdiesel/api/Protobuf$Message$Agent$Builder;
    .locals 1

    .prologue
    .line 11166
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Agent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Agent$Builder;->bitField0_:I

    .line 11167
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;->getDefaultInstance()Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;->getPkgName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Agent$Builder;->pkgName_:Ljava/lang/Object;

    .line 11168
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Agent$Builder;->onChanged()V

    .line 11169
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Agent$Builder;->clone()Lcom/mwr/jdiesel/api/Protobuf$Message$Agent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Agent$Builder;->clone()Lcom/mwr/jdiesel/api/Protobuf$Message$Agent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Agent$Builder;->clone()Lcom/mwr/jdiesel/api/Protobuf$Message$Agent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/mwr/jdiesel/api/Protobuf$Message$Agent$Builder;
    .locals 2

    .prologue
    .line 11022
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$Agent$Builder;->create()Lcom/mwr/jdiesel/api/Protobuf$Message$Agent$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Agent$Builder;->buildPartial()Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Agent$Builder;->mergeFrom(Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;)Lcom/mwr/jdiesel/api/Protobuf$Message$Agent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAgentVersion()Ljava/lang/String;
    .locals 3

    .prologue
    .line 11183
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Agent$Builder;->agentVersion_:Ljava/lang/Object;

    .line 11184
    .local v0, "ref":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 11185
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0    # "ref":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 11186
    .local v1, "s":Ljava/lang/String;
    iput-object v1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Agent$Builder;->agentVersion_:Ljava/lang/Object;

    .line 11189
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

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Agent$Builder;->getDefaultInstanceForType()Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Agent$Builder;->getDefaultInstanceForType()Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;
    .locals 1

    .prologue
    .line 11031
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;->getDefaultInstance()Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 11027
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getPkgName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 11147
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Agent$Builder;->pkgName_:Ljava/lang/Object;

    .line 11148
    .local v0, "ref":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 11149
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0    # "ref":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 11150
    .local v1, "s":Ljava/lang/String;
    iput-object v1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Agent$Builder;->pkgName_:Ljava/lang/Object;

    .line 11153
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

.method public hasAgentVersion()Z
    .locals 2

    .prologue
    .line 11180
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Agent$Builder;->bitField0_:I

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

.method public hasPkgName()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 11144
    iget v1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Agent$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 10992
    # getter for: Lcom/mwr/jdiesel/api/Protobuf;->internal_static_com_mwr_jdiesel_api_Message_Agent_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf;->access$68()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 11091
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Agent$Builder;->hasPkgName()Z

    move-result v1

    if-nez v1, :cond_1

    .line 11099
    :cond_0
    :goto_0
    return v0

    .line 11095
    :cond_1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Agent$Builder;->hasAgentVersion()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 11099
    const/4 v0, 0x1

    goto :goto_0
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
    invoke-virtual {p0, p1, p2}, Lcom/mwr/jdiesel/api/Protobuf$Message$Agent$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mwr/jdiesel/api/Protobuf$Message$Agent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Agent$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/mwr/jdiesel/api/Protobuf$Message$Agent$Builder;

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
    invoke-virtual {p0, p1, p2}, Lcom/mwr/jdiesel/api/Protobuf$Message$Agent$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mwr/jdiesel/api/Protobuf$Message$Agent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Agent$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/mwr/jdiesel/api/Protobuf$Message$Agent$Builder;

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
    invoke-virtual {p0, p1, p2}, Lcom/mwr/jdiesel/api/Protobuf$Message$Agent$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mwr/jdiesel/api/Protobuf$Message$Agent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mwr/jdiesel/api/Protobuf$Message$Agent$Builder;
    .locals 3
    .param p1, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 11108
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Agent$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    .line 11107
    invoke-static {v2}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v1

    .line 11110
    .local v1, "unknownFields":Lcom/google/protobuf/UnknownFieldSet$Builder;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 11111
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 11117
    invoke-virtual {p0, p1, v1, p2, v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Agent$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    .line 11118
    if-nez v2, :cond_0

    .line 11119
    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mwr/jdiesel/api/Protobuf$Message$Agent$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 11120
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Agent$Builder;->onChanged()V

    .line 11121
    :goto_1
    return-object p0

    .line 11113
    :sswitch_0
    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mwr/jdiesel/api/Protobuf$Message$Agent$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 11114
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Agent$Builder;->onChanged()V

    goto :goto_1

    .line 11126
    :sswitch_1
    iget v2, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Agent$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Agent$Builder;->bitField0_:I

    .line 11127
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Agent$Builder;->pkgName_:Ljava/lang/Object;

    goto :goto_0

    .line 11131
    :sswitch_2
    iget v2, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Agent$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Agent$Builder;->bitField0_:I

    .line 11132
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Agent$Builder;->agentVersion_:Ljava/lang/Object;

    goto :goto_0

    .line 11111
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/mwr/jdiesel/api/Protobuf$Message$Agent$Builder;
    .locals 1
    .param p1, "other"    # Lcom/google/protobuf/Message;

    .prologue
    .line 11070
    instance-of v0, p1, Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;

    if-eqz v0, :cond_0

    .line 11071
    check-cast p1, Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;

    .end local p1    # "other":Lcom/google/protobuf/Message;
    invoke-virtual {p0, p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Agent$Builder;->mergeFrom(Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;)Lcom/mwr/jdiesel/api/Protobuf$Message$Agent$Builder;

    move-result-object p0

    .line 11074
    .end local p0    # "this":Lcom/mwr/jdiesel/api/Protobuf$Message$Agent$Builder;
    :goto_0
    return-object p0

    .line 11073
    .restart local p0    # "this":Lcom/mwr/jdiesel/api/Protobuf$Message$Agent$Builder;
    .restart local p1    # "other":Lcom/google/protobuf/Message;
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;)Lcom/mwr/jdiesel/api/Protobuf$Message$Agent$Builder;
    .locals 1
    .param p1, "other"    # Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;

    .prologue
    .line 11079
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;->getDefaultInstance()Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 11087
    :goto_0
    return-object p0

    .line 11080
    :cond_0
    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;->hasPkgName()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 11081
    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;->getPkgName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Agent$Builder;->setPkgName(Ljava/lang/String;)Lcom/mwr/jdiesel/api/Protobuf$Message$Agent$Builder;

    .line 11083
    :cond_1
    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;->hasAgentVersion()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 11084
    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;->getAgentVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Agent$Builder;->setAgentVersion(Ljava/lang/String;)Lcom/mwr/jdiesel/api/Protobuf$Message$Agent$Builder;

    .line 11086
    :cond_2
    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Agent$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public setAgentVersion(Ljava/lang/String;)Lcom/mwr/jdiesel/api/Protobuf$Message$Agent$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 11193
    if-nez p1, :cond_0

    .line 11194
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 11196
    :cond_0
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Agent$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Agent$Builder;->bitField0_:I

    .line 11197
    iput-object p1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Agent$Builder;->agentVersion_:Ljava/lang/Object;

    .line 11198
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Agent$Builder;->onChanged()V

    .line 11199
    return-object p0
.end method

.method setAgentVersion(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 11208
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Agent$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Agent$Builder;->bitField0_:I

    .line 11209
    iput-object p1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Agent$Builder;->agentVersion_:Ljava/lang/Object;

    .line 11210
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Agent$Builder;->onChanged()V

    .line 11211
    return-void
.end method

.method public setPkgName(Ljava/lang/String;)Lcom/mwr/jdiesel/api/Protobuf$Message$Agent$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 11157
    if-nez p1, :cond_0

    .line 11158
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 11160
    :cond_0
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Agent$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Agent$Builder;->bitField0_:I

    .line 11161
    iput-object p1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Agent$Builder;->pkgName_:Ljava/lang/Object;

    .line 11162
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Agent$Builder;->onChanged()V

    .line 11163
    return-object p0
.end method

.method setPkgName(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 11172
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Agent$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Agent$Builder;->bitField0_:I

    .line 11173
    iput-object p1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Agent$Builder;->pkgName_:Ljava/lang/Object;

    .line 11174
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Agent$Builder;->onChanged()V

    .line 11175
    return-void
.end method
