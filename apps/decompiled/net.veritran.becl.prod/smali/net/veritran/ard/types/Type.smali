.class public interface abstract Lnet/veritran/ard/types/Type;
.super Ljava/lang/Object;
.source "Type.java"


# virtual methods
.method public abstract evaluateOperation(Lnet/veritran/ard/types/Type;Ljava/lang/String;)Lnet/veritran/ard/types/Type;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/veritran/ard/exception/ARDException;
        }
    .end annotation
.end method

.method public abstract getObjectType()I
.end method

.method public abstract getValue()Ljava/lang/Object;
.end method
