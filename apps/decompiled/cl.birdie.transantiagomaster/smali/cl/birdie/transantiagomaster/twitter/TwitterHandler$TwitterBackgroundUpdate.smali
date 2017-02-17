.class public final Lcl/birdie/transantiagomaster/twitter/TwitterHandler$TwitterBackgroundUpdate;
.super Ljava/lang/Thread;
.source "TwitterHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcl/birdie/transantiagomaster/twitter/TwitterHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TwitterBackgroundUpdate"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 407
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    .prologue
    .line 409
    invoke-static {}, Lcl/birdie/transantiagomaster/twitter/TwitterHandler;->descargarTimeline()V

    .line 410
    return-void
.end method
