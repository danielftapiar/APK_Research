.class public interface abstract Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$ConstructOrBuilder;
.super Ljava/lang/Object;
.source "Protobuf.java"

# interfaces
.implements Lcom/google/protobuf/MessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ConstructOrBuilder"
.end annotation


# virtual methods
.method public abstract getArgument(I)Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;
.end method

.method public abstract getArgumentCount()I
.end method

.method public abstract getArgumentList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getArgumentOrBuilder(I)Lcom/mwr/jdiesel/api/Protobuf$Message$ArgumentOrBuilder;
.end method

.method public abstract getArgumentOrBuilderList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/mwr/jdiesel/api/Protobuf$Message$ArgumentOrBuilder;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getObject()Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;
.end method

.method public abstract getObjectOrBuilder()Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReferenceOrBuilder;
.end method

.method public abstract hasObject()Z
.end method
