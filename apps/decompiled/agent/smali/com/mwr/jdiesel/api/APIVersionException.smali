.class public Lcom/mwr/jdiesel/api/APIVersionException;
.super Ljava/lang/Exception;
.source "APIVersionException.java"


# static fields
.field private static final serialVersionUID:J = 0x565fcc292f92604cL


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 8
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 9
    return-void
.end method
