.class public Lcom/prey/exceptions/NoMoreDevicesAllowedException;
.super Lcom/prey/exceptions/PreyException;
.source "NoMoreDevicesAllowedException.java"


# static fields
.field private static final serialVersionUID:J = 0x5b101c4f39dbf5b8L


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/prey/exceptions/PreyException;-><init>(Ljava/lang/String;)V

    .line 23
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "detailMessage"    # Ljava/lang/String;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Lcom/prey/exceptions/PreyException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 19
    return-void
.end method
