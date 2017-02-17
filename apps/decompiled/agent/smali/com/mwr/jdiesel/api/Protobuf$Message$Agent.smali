.class public final Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;
.super Lcom/google/protobuf/GeneratedMessage;
.source "Protobuf.java"

# interfaces
.implements Lcom/mwr/jdiesel/api/Protobuf$Message$AgentOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mwr/jdiesel/api/Protobuf$Message;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Agent"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mwr/jdiesel/api/Protobuf$Message$Agent$Builder;
    }
.end annotation


# static fields
.field public static final AGENT_VERSION_FIELD_NUMBER:I = 0x2

.field public static final PKG_NAME_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;

.field private static final serialVersionUID:J


# instance fields
.field private agentVersion_:Ljava/lang/Object;

.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private pkgName_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 11217
    new-instance v0, Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;-><init>(Z)V

    sput-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;->defaultInstance:Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;

    .line 11218
    sget-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;->defaultInstance:Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;

    invoke-direct {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;->initFields()V

    .line 11219
    return-void
.end method

.method private constructor <init>(Lcom/mwr/jdiesel/api/Protobuf$Message$Agent$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/mwr/jdiesel/api/Protobuf$Message$Agent$Builder;

    .prologue
    const/4 v0, -0x1

    .line 10755
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    .line 10847
    iput-byte v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;->memoizedIsInitialized:B

    .line 10876
    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;->memoizedSerializedSize:I

    .line 10756
    return-void
.end method

.method synthetic constructor <init>(Lcom/mwr/jdiesel/api/Protobuf$Message$Agent$Builder;Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;)V
    .locals 0

    .prologue
    .line 10754
    invoke-direct {p0, p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;-><init>(Lcom/mwr/jdiesel/api/Protobuf$Message$Agent$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .param p1, "noInit"    # Z

    .prologue
    const/4 v0, -0x1

    .line 10757
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 10847
    iput-byte v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;->memoizedIsInitialized:B

    .line 10876
    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;->memoizedSerializedSize:I

    .line 10757
    return-void
.end method

.method static synthetic access$10(Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 10813
    iput-object p1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;->agentVersion_:Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$11(Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;I)V
    .locals 0

    .prologue
    .line 10778
    iput p1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;->bitField0_:I

    return-void
.end method

.method static synthetic access$7()Z
    .locals 1

    .prologue
    .line 10750
    sget-boolean v0, Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$9(Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 10781
    iput-object p1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;->pkgName_:Ljava/lang/Object;

    return-void
.end method

.method private getAgentVersionBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 10832
    iget-object v1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;->agentVersion_:Ljava/lang/Object;

    .line 10833
    .local v1, "ref":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 10835
    check-cast v1, Ljava/lang/String;

    .end local v1    # "ref":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 10836
    .local v0, "b":Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;->agentVersion_:Ljava/lang/Object;

    .line 10839
    .end local v0    # "b":Lcom/google/protobuf/ByteString;
    :goto_0
    return-object v0

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    check-cast v1, Lcom/google/protobuf/ByteString;

    .end local v1    # "ref":Ljava/lang/Object;
    move-object v0, v1

    goto :goto_0
.end method

.method public static getDefaultInstance()Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;
    .locals 1

    .prologue
    .line 10761
    sget-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;->defaultInstance:Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 10770
    # getter for: Lcom/mwr/jdiesel/api/Protobuf;->internal_static_com_mwr_jdiesel_api_Message_Agent_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf;->access$44()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private getPkgNameBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 10800
    iget-object v1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;->pkgName_:Ljava/lang/Object;

    .line 10801
    .local v1, "ref":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 10803
    check-cast v1, Ljava/lang/String;

    .end local v1    # "ref":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 10804
    .local v0, "b":Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;->pkgName_:Ljava/lang/Object;

    .line 10807
    .end local v0    # "b":Lcom/google/protobuf/ByteString;
    :goto_0
    return-object v0

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    check-cast v1, Lcom/google/protobuf/ByteString;

    .end local v1    # "ref":Ljava/lang/Object;
    move-object v0, v1

    goto :goto_0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 10844
    const-string v0, ""

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;->pkgName_:Ljava/lang/Object;

    .line 10845
    const-string v0, ""

    iput-object v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;->agentVersion_:Ljava/lang/Object;

    .line 10846
    return-void
.end method

.method public static newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$Agent$Builder;
    .locals 1

    .prologue
    .line 10969
    # invokes: Lcom/mwr/jdiesel/api/Protobuf$Message$Agent$Builder;->create()Lcom/mwr/jdiesel/api/Protobuf$Message$Agent$Builder;
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$Agent$Builder;->access$18()Lcom/mwr/jdiesel/api/Protobuf$Message$Agent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;)Lcom/mwr/jdiesel/api/Protobuf$Message$Agent$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;

    .prologue
    .line 10972
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;->newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$Agent$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Agent$Builder;->mergeFrom(Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;)Lcom/mwr/jdiesel/api/Protobuf$Message$Agent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10938
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;->newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$Agent$Builder;

    move-result-object v0

    .line 10939
    .local v0, "builder":Lcom/mwr/jdiesel/api/Protobuf$Message$Agent$Builder;
    invoke-virtual {v0, p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Agent$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 10940
    # invokes: Lcom/mwr/jdiesel/api/Protobuf$Message$Agent$Builder;->buildParsed()Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;
    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Agent$Builder;->access$17(Lcom/mwr/jdiesel/api/Protobuf$Message$Agent$Builder;)Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;

    move-result-object v1

    .line 10942
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10949
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;->newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$Agent$Builder;

    move-result-object v0

    .line 10950
    .local v0, "builder":Lcom/mwr/jdiesel/api/Protobuf$Message$Agent$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Agent$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 10951
    # invokes: Lcom/mwr/jdiesel/api/Protobuf$Message$Agent$Builder;->buildParsed()Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;
    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Agent$Builder;->access$17(Lcom/mwr/jdiesel/api/Protobuf$Message$Agent$Builder;)Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;

    move-result-object v1

    .line 10953
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 10905
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;->newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$Agent$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Agent$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mwr/jdiesel/api/Protobuf$Message$Agent$Builder;

    # invokes: Lcom/mwr/jdiesel/api/Protobuf$Message$Agent$Builder;->buildParsed()Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;
    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Agent$Builder;->access$17(Lcom/mwr/jdiesel/api/Protobuf$Message$Agent$Builder;)Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 10911
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;->newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$Agent$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Agent$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mwr/jdiesel/api/Protobuf$Message$Agent$Builder;

    .line 10912
    # invokes: Lcom/mwr/jdiesel/api/Protobuf$Message$Agent$Builder;->buildParsed()Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;
    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Agent$Builder;->access$17(Lcom/mwr/jdiesel/api/Protobuf$Message$Agent$Builder;)Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;

    move-result-object v0

    .line 10911
    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10959
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;->newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$Agent$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Agent$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mwr/jdiesel/api/Protobuf$Message$Agent$Builder;

    # invokes: Lcom/mwr/jdiesel/api/Protobuf$Message$Agent$Builder;->buildParsed()Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;
    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Agent$Builder;->access$17(Lcom/mwr/jdiesel/api/Protobuf$Message$Agent$Builder;)Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10965
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;->newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$Agent$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Agent$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mwr/jdiesel/api/Protobuf$Message$Agent$Builder;

    move-result-object v0

    .line 10966
    # invokes: Lcom/mwr/jdiesel/api/Protobuf$Message$Agent$Builder;->buildParsed()Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;
    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Agent$Builder;->access$17(Lcom/mwr/jdiesel/api/Protobuf$Message$Agent$Builder;)Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;

    move-result-object v0

    .line 10965
    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10927
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;->newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$Agent$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Agent$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mwr/jdiesel/api/Protobuf$Message$Agent$Builder;

    # invokes: Lcom/mwr/jdiesel/api/Protobuf$Message$Agent$Builder;->buildParsed()Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;
    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Agent$Builder;->access$17(Lcom/mwr/jdiesel/api/Protobuf$Message$Agent$Builder;)Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10933
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;->newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$Agent$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Agent$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mwr/jdiesel/api/Protobuf$Message$Agent$Builder;

    .line 10934
    # invokes: Lcom/mwr/jdiesel/api/Protobuf$Message$Agent$Builder;->buildParsed()Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;
    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Agent$Builder;->access$17(Lcom/mwr/jdiesel/api/Protobuf$Message$Agent$Builder;)Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;

    move-result-object v0

    .line 10933
    return-object v0
.end method

.method public static parseFrom([B)Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 10916
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;->newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$Agent$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Agent$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mwr/jdiesel/api/Protobuf$Message$Agent$Builder;

    # invokes: Lcom/mwr/jdiesel/api/Protobuf$Message$Agent$Builder;->buildParsed()Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;
    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Agent$Builder;->access$17(Lcom/mwr/jdiesel/api/Protobuf$Message$Agent$Builder;)Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 10922
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;->newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$Agent$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Agent$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mwr/jdiesel/api/Protobuf$Message$Agent$Builder;

    .line 10923
    # invokes: Lcom/mwr/jdiesel/api/Protobuf$Message$Agent$Builder;->buildParsed()Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;
    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Agent$Builder;->access$17(Lcom/mwr/jdiesel/api/Protobuf$Message$Agent$Builder;)Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;

    move-result-object v0

    .line 10922
    return-object v0
.end method


# virtual methods
.method public getAgentVersion()Ljava/lang/String;
    .locals 4

    .prologue
    .line 10818
    iget-object v1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;->agentVersion_:Ljava/lang/Object;

    .line 10819
    .local v1, "ref":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 10820
    check-cast v1, Ljava/lang/String;

    .line 10828
    .end local v1    # "ref":Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 10823
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 10824
    .local v0, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 10825
    .local v2, "s":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 10826
    iput-object v2, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;->agentVersion_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 10828
    goto :goto_0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;->getDefaultInstanceForType()Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;->getDefaultInstanceForType()Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;
    .locals 1

    .prologue
    .line 10765
    sget-object v0, Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;->defaultInstance:Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;

    return-object v0
.end method

.method public getPkgName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 10786
    iget-object v1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;->pkgName_:Ljava/lang/Object;

    .line 10787
    .local v1, "ref":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 10788
    check-cast v1, Ljava/lang/String;

    .line 10796
    .end local v1    # "ref":Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 10791
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 10792
    .local v0, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 10793
    .local v2, "s":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 10794
    iput-object v2, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;->pkgName_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 10796
    goto :goto_0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 10878
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;->memoizedSerializedSize:I

    .line 10879
    .local v0, "size":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 10892
    .end local v0    # "size":I
    .local v1, "size":I
    :goto_0
    return v1

    .line 10881
    .end local v1    # "size":I
    .restart local v0    # "size":I
    :cond_0
    const/4 v0, 0x0

    .line 10882
    iget v2, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1

    .line 10884
    invoke-direct {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;->getPkgNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 10886
    :cond_1
    iget v2, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_2

    .line 10888
    invoke-direct {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;->getAgentVersionBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 10890
    :cond_2
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v2

    add-int/2addr v0, v2

    .line 10891
    iput v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;->memoizedSerializedSize:I

    move v1, v0

    .line 10892
    .end local v0    # "size":I
    .restart local v1    # "size":I
    goto :goto_0
.end method

.method public hasAgentVersion()Z
    .locals 2

    .prologue
    .line 10815
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;->bitField0_:I

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

    .line 10783
    iget v1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;->bitField0_:I

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
    .line 10775
    # getter for: Lcom/mwr/jdiesel/api/Protobuf;->internal_static_com_mwr_jdiesel_api_Message_Agent_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf;->access$68()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 10849
    iget-byte v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;->memoizedIsInitialized:B

    .line 10850
    .local v0, "isInitialized":B
    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    if-ne v0, v1, :cond_0

    .line 10861
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 10850
    goto :goto_0

    .line 10852
    :cond_1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;->hasPkgName()Z

    move-result v3

    if-nez v3, :cond_2

    .line 10853
    iput-byte v2, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;->memoizedIsInitialized:B

    move v1, v2

    .line 10854
    goto :goto_0

    .line 10856
    :cond_2
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;->hasAgentVersion()Z

    move-result v3

    if-nez v3, :cond_3

    .line 10857
    iput-byte v2, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;->memoizedIsInitialized:B

    move v1, v2

    .line 10858
    goto :goto_0

    .line 10860
    :cond_3
    iput-byte v1, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;->newBuilderForType()Lcom/mwr/jdiesel/api/Protobuf$Message$Agent$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/mwr/jdiesel/api/Protobuf$Message$Agent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;->newBuilderForType()Lcom/mwr/jdiesel/api/Protobuf$Message$Agent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/mwr/jdiesel/api/Protobuf$Message$Agent$Builder;
    .locals 1

    .prologue
    .line 10970
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;->newBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$Agent$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/mwr/jdiesel/api/Protobuf$Message$Agent$Builder;
    .locals 2
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 10979
    new-instance v0, Lcom/mwr/jdiesel/api/Protobuf$Message$Agent$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/mwr/jdiesel/api/Protobuf$Message$Agent$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/mwr/jdiesel/api/Protobuf$Message$Agent$Builder;)V

    .line 10980
    .local v0, "builder":Lcom/mwr/jdiesel/api/Protobuf$Message$Agent$Builder;
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;->toBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$Agent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;->toBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$Agent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$Agent$Builder;
    .locals 1

    .prologue
    .line 10974
    invoke-static {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;->newBuilder(Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;)Lcom/mwr/jdiesel/api/Protobuf$Message$Agent$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected writeReplace()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 10899
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 3
    .param p1, "output"    # Lcom/google/protobuf/CodedOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 10866
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;->getSerializedSize()I

    .line 10867
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 10868
    invoke-direct {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;->getPkgNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 10870
    :cond_0
    iget v0, p0, Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 10871
    invoke-direct {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;->getAgentVersionBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 10873
    :cond_1
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 10874
    return-void
.end method
