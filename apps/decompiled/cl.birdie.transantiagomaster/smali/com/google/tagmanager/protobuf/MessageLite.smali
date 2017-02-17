.class public interface abstract Lcom/google/tagmanager/protobuf/MessageLite;
.super Ljava/lang/Object;
.source "MessageLite.java"

# interfaces
.implements Lcom/google/tagmanager/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/tagmanager/protobuf/MessageLite$Builder;
    }
.end annotation


# virtual methods
.method public abstract getParserForType()Lcom/google/tagmanager/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/tagmanager/protobuf/Parser",
            "<+",
            "Lcom/google/tagmanager/protobuf/MessageLite;",
            ">;"
        }
    .end annotation
.end method

.method public abstract newBuilderForType()Lcom/google/tagmanager/protobuf/MessageLite$Builder;
.end method

.method public abstract toBuilder()Lcom/google/tagmanager/protobuf/MessageLite$Builder;
.end method
