.class public abstract Lcom/google/tagmanager/protobuf/AbstractParser;
.super Ljava/lang/Object;
.source "AbstractParser.java"

# interfaces
.implements Lcom/google/tagmanager/protobuf/Parser;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType::",
        "Lcom/google/tagmanager/protobuf/MessageLite;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/tagmanager/protobuf/Parser",
        "<TMessageType;>;"
    }
.end annotation


# static fields
.field private static final EMPTY_REGISTRY:Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    invoke-static {}, Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;->getEmptyRegistry()Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;

    move-result-object v0

    sput-object v0, Lcom/google/tagmanager/protobuf/AbstractParser;->EMPTY_REGISTRY:Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    .local p0, "this":Lcom/google/tagmanager/protobuf/AbstractParser;, "Lcom/google/tagmanager/protobuf/AbstractParser<TMessageType;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private parsePartialFrom(Lcom/google/tagmanager/protobuf/ByteString;Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;)Lcom/google/tagmanager/protobuf/MessageLite;
    .locals 5
    .param p1, "data"    # Lcom/google/tagmanager/protobuf/ByteString;
    .param p2, "extensionRegistry"    # Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/tagmanager/protobuf/ByteString;",
            "Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;",
            ")TMessageType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/tagmanager/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 79
    .local p0, "this":Lcom/google/tagmanager/protobuf/AbstractParser;, "Lcom/google/tagmanager/protobuf/AbstractParser<TMessageType;>;"
    :try_start_0
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/ByteString;->newCodedInput()Lcom/google/tagmanager/protobuf/CodedInputStream;

    move-result-object v1

    .line 80
    .local v1, "input":Lcom/google/tagmanager/protobuf/CodedInputStream;
    invoke-virtual {p0, v1, p2}, Lcom/google/tagmanager/protobuf/AbstractParser;->parsePartialFrom(Lcom/google/tagmanager/protobuf/CodedInputStream;Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/tagmanager/protobuf/MessageLite;
    :try_end_0
    .catch Lcom/google/tagmanager/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 82
    .local v2, "message":Lcom/google/tagmanager/protobuf/MessageLite;, "TMessageType;"
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v1, v3}, Lcom/google/tagmanager/protobuf/CodedInputStream;->checkLastTagWas(I)V
    :try_end_1
    .catch Lcom/google/tagmanager/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 86
    return-object v2

    .line 83
    :catch_0
    move-exception v3

    :try_start_2
    invoke-virtual {v3, v2}, Lcom/google/tagmanager/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/tagmanager/protobuf/MessageLite;)Lcom/google/tagmanager/protobuf/InvalidProtocolBufferException;

    move-result-object v3

    throw v3
    :try_end_2
    .catch Lcom/google/tagmanager/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 87
    .end local v1    # "input":Lcom/google/tagmanager/protobuf/CodedInputStream;
    .end local v2    # "message":Lcom/google/tagmanager/protobuf/MessageLite;, "TMessageType;"
    :catch_1
    move-exception v3

    throw v3

    .line 89
    :catch_2
    move-exception v0

    .line 90
    .local v0, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Reading from a ByteString threw an IOException (should never happen)."

    invoke-direct {v3, v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method


# virtual methods
.method public final bridge synthetic parseFrom(Lcom/google/tagmanager/protobuf/ByteString;Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .locals 2
    .param p1, "x0"    # Lcom/google/tagmanager/protobuf/ByteString;
    .param p2, "x1"    # Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/tagmanager/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 21
    .local p0, "this":Lcom/google/tagmanager/protobuf/AbstractParser;, "Lcom/google/tagmanager/protobuf/AbstractParser<TMessageType;>;"
    invoke-direct {p0, p1, p2}, Lcom/google/tagmanager/protobuf/AbstractParser;->parsePartialFrom(Lcom/google/tagmanager/protobuf/ByteString;Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;)Lcom/google/tagmanager/protobuf/MessageLite;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v1}, Lcom/google/tagmanager/protobuf/MessageLite;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_2

    instance-of v0, v1, Lcom/google/tagmanager/protobuf/AbstractMessageLite;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/tagmanager/protobuf/UninitializedMessageException;

    invoke-direct {v0}, Lcom/google/tagmanager/protobuf/UninitializedMessageException;-><init>()V

    :goto_0
    invoke-virtual {v0}, Lcom/google/tagmanager/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/tagmanager/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/tagmanager/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/tagmanager/protobuf/MessageLite;)Lcom/google/tagmanager/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    :cond_0
    instance-of v0, v1, Lcom/google/tagmanager/protobuf/AbstractMutableMessageLite;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/google/tagmanager/protobuf/AbstractMutableMessageLite;->newUninitializedMessageException()Lcom/google/tagmanager/protobuf/UninitializedMessageException;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/google/tagmanager/protobuf/UninitializedMessageException;

    invoke-direct {v0}, Lcom/google/tagmanager/protobuf/UninitializedMessageException;-><init>()V

    goto :goto_0

    :cond_2
    return-object v1
.end method
