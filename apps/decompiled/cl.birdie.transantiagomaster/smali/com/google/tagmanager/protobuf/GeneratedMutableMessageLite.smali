.class public abstract Lcom/google/tagmanager/protobuf/GeneratedMutableMessageLite;
.super Lcom/google/tagmanager/protobuf/AbstractMutableMessageLite;
.source "GeneratedMutableMessageLite.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/tagmanager/protobuf/GeneratedMutableMessageLite",
        "<TMessageType;>;>",
        "Lcom/google/tagmanager/protobuf/AbstractMutableMessageLite;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field protected unknownFields:Lcom/google/tagmanager/protobuf/ByteString;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    .local p0, "this":Lcom/google/tagmanager/protobuf/GeneratedMutableMessageLite;, "Lcom/google/tagmanager/protobuf/GeneratedMutableMessageLite<TMessageType;>;"
    invoke-direct {p0}, Lcom/google/tagmanager/protobuf/AbstractMutableMessageLite;-><init>()V

    .line 28
    sget-object v0, Lcom/google/tagmanager/protobuf/ByteString;->EMPTY:Lcom/google/tagmanager/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/tagmanager/protobuf/GeneratedMutableMessageLite;->unknownFields:Lcom/google/tagmanager/protobuf/ByteString;

    .line 492
    return-void
.end method


# virtual methods
.method public abstract mergeFrom$615f62df()Lcom/google/tagmanager/protobuf/GeneratedMutableMessageLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation
.end method
