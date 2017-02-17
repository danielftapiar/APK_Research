.class final Lcl/birdie/transantiagomaster/facebook/FacebookConectActions$18;
.super Ljava/lang/Object;
.source "FacebookConectActions.java"

# interfaces
.implements Lcom/facebook/widget/WebDialog$OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcl/birdie/transantiagomaster/facebook/FacebookConectActions;->sendRequestDialog(Landroid/app/Activity;Lcl/birdie/transantiagomaster/facebook/IFBCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$callback:Lcl/birdie/transantiagomaster/facebook/IFBCallback;


# direct methods
.method constructor <init>(Lcl/birdie/transantiagomaster/facebook/IFBCallback;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions$18;->val$callback:Lcl/birdie/transantiagomaster/facebook/IFBCallback;

    .line 1512
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onComplete(Landroid/os/Bundle;Lcom/facebook/FacebookException;)V
    .locals 2
    .param p1, "values"    # Landroid/os/Bundle;
    .param p2, "error"    # Lcom/facebook/FacebookException;

    .prologue
    const/4 v1, 0x0

    .line 1517
    if-eqz p2, :cond_0

    .line 1518
    instance-of v0, p2, Lcom/facebook/FacebookOperationCanceledException;

    if-nez v0, :cond_1

    .line 1519
    iget-object v0, p0, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions$18;->val$callback:Lcl/birdie/transantiagomaster/facebook/IFBCallback;

    invoke-interface {v0, v1}, Lcl/birdie/transantiagomaster/facebook/IFBCallback;->onError(Ljava/lang/Object;)V

    .line 1543
    :goto_0
    return-void

    .line 1530
    :cond_0
    const-string v0, "request"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1531
    if-eqz v0, :cond_1

    .line 1532
    iget-object v0, p0, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions$18;->val$callback:Lcl/birdie/transantiagomaster/facebook/IFBCallback;

    invoke-interface {v0, v1}, Lcl/birdie/transantiagomaster/facebook/IFBCallback;->onSuccess(Ljava/lang/Object;)V

    goto :goto_0

    .line 1537
    :cond_1
    iget-object v0, p0, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions$18;->val$callback:Lcl/birdie/transantiagomaster/facebook/IFBCallback;

    invoke-interface {v0, v1}, Lcl/birdie/transantiagomaster/facebook/IFBCallback;->onError(Ljava/lang/Object;)V

    goto :goto_0
.end method
