.class Lcom/prey/activities/SignInActivity$1;
.super Ljava/lang/Object;
.source "SignInActivity.java"

# interfaces
.implements Lcom/prey/util/KeyboardVisibilityListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prey/activities/SignInActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/prey/activities/SignInActivity;

.field final synthetic val$halfHeight:I

.field final synthetic val$linkSignin:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/prey/activities/SignInActivity;Landroid/widget/TextView;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/prey/activities/SignInActivity;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/prey/activities/SignInActivity$1;->this$0:Lcom/prey/activities/SignInActivity;

    iput-object p2, p0, Lcom/prey/activities/SignInActivity$1;->val$linkSignin:Landroid/widget/TextView;

    iput p3, p0, Lcom/prey/activities/SignInActivity$1;->val$halfHeight:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVisibilityChanged(Z)V
    .locals 6
    .param p1, "keyboardVisible"    # Z

    .prologue
    .line 124
    :try_start_0
    iget-object v2, p0, Lcom/prey/activities/SignInActivity$1;->val$linkSignin:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 125
    .local v1, "params":Landroid/widget/RelativeLayout$LayoutParams;
    if-eqz p1, :cond_0

    .line 126
    const-string v2, "key on"

    invoke-static {v2}, Lcom/prey/PreyLogger;->d(Ljava/lang/String;)V

    .line 128
    const/16 v2, 0x14

    const/4 v3, 0x0

    const/16 v4, 0x14

    iget v5, p0, Lcom/prey/activities/SignInActivity$1;->val$halfHeight:I

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 134
    :goto_0
    iget-object v2, p0, Lcom/prey/activities/SignInActivity$1;->val$linkSignin:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 138
    .end local v1    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :goto_1
    return-void

    .line 130
    .restart local v1    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    const-string v2, "key off"

    invoke-static {v2}, Lcom/prey/PreyLogger;->d(Ljava/lang/String;)V

    .line 132
    const/16 v2, 0x14

    const/4 v3, 0x0

    const/16 v4, 0x14

    const/16 v5, 0x14

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 135
    .end local v1    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :catch_0
    move-exception v0

    .line 136
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/prey/PreyLogger;->i(Ljava/lang/String;)V

    goto :goto_1
.end method
