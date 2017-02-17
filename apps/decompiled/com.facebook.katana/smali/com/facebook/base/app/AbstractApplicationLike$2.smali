.class Lcom/facebook/base/app/AbstractApplicationLike$2;
.super Ljava/lang/Object;
.source "AbstractApplicationLike.java"

# interfaces
.implements Lcom/google/common/util/concurrent/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/util/concurrent/FutureCallback",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/base/app/AbstractApplicationLike;


# direct methods
.method constructor <init>(Lcom/facebook/base/app/AbstractApplicationLike;)V
    .locals 0

    .prologue
    .line 205
    iput-object p1, p0, Lcom/facebook/base/app/AbstractApplicationLike$2;->a:Lcom/facebook/base/app/AbstractApplicationLike;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()V
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/facebook/base/app/AbstractApplicationLike$2;->a:Lcom/facebook/base/app/AbstractApplicationLike;

    invoke-static {}, Lcom/facebook/base/app/AbstractApplicationLike;->c()V

    .line 209
    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 214
    invoke-static {p1}, Lcom/google/common/base/Throwables;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 205
    invoke-direct {p0}, Lcom/facebook/base/app/AbstractApplicationLike$2;->a()V

    return-void
.end method
