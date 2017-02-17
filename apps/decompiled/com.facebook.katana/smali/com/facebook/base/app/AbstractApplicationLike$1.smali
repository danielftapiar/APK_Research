.class Lcom/facebook/base/app/AbstractApplicationLike$1;
.super Ljava/lang/Object;
.source "AbstractApplicationLike.java"

# interfaces
.implements Lcom/facebook/common/soloader/SoLoaderShim$Handler;


# instance fields
.field final synthetic a:Lcom/facebook/base/app/AbstractApplicationLike;


# direct methods
.method constructor <init>(Lcom/facebook/base/app/AbstractApplicationLike;)V
    .locals 0

    .prologue
    .line 139
    iput-object p1, p0, Lcom/facebook/base/app/AbstractApplicationLike$1;->a:Lcom/facebook/base/app/AbstractApplicationLike;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 142
    invoke-static {p1}, Lcom/facebook/sosource/FBSoLoader;->a(Ljava/lang/String;)V

    .line 143
    return-void
.end method
