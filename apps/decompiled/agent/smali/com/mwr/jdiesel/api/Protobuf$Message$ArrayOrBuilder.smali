.class public interface abstract Lcom/mwr/jdiesel/api/Protobuf$Message$ArrayOrBuilder;
.super Ljava/lang/Object;
.source "Protobuf.java"

# interfaces
.implements Lcom/google/protobuf/MessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mwr/jdiesel/api/Protobuf$Message;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ArrayOrBuilder"
.end annotation


# virtual methods
.method public abstract getElement(I)Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;
.end method

.method public abstract getElementCount()I
.end method

.method public abstract getElementList()Ljava/util/List;
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

.method public abstract getElementOrBuilder(I)Lcom/mwr/jdiesel/api/Protobuf$Message$ArgumentOrBuilder;
.end method

.method public abstract getElementOrBuilderList()Ljava/util/List;
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

.method public abstract getType()Lcom/mwr/jdiesel/api/Protobuf$Message$Array$ArrayType;
.end method

.method public abstract hasType()Z
.end method
