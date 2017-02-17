.class final Lcl/birdie/transantiagomaster/TransantiagoMasterApplication$TwitterBackgroundLogin;
.super Ljava/lang/Thread;
.source "TransantiagoMasterApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TwitterBackgroundLogin"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 396
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 396
    invoke-direct {p0}, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication$TwitterBackgroundLogin;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 401
    invoke-static {}, Lcl/birdie/transantiagomaster/twitter/TwitterHandler;->inicializar()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 402
    const/4 v0, 0x1

    sput-boolean v0, Lcl/birdie/transantiagomaster/TileHandler;->refresh:Z

    .line 412
    :cond_0
    return-void
.end method
