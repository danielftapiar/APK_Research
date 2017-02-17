.class Lcom/prey/activities/SignInActivity$3;
.super Ljava/lang/Object;
.source "SignInActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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


# direct methods
.method constructor <init>(Lcom/prey/activities/SignInActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/prey/activities/SignInActivity;

    .prologue
    .line 175
    iput-object p1, p0, Lcom/prey/activities/SignInActivity$3;->this$0:Lcom/prey/activities/SignInActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 179
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/prey/activities/SignInActivity$3;->this$0:Lcom/prey/activities/SignInActivity;

    invoke-virtual {v1}, Lcom/prey/activities/SignInActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/prey/activities/SignUpActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 180
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/prey/activities/SignInActivity$3;->this$0:Lcom/prey/activities/SignInActivity;

    invoke-virtual {v1, v0}, Lcom/prey/activities/SignInActivity;->startActivity(Landroid/content/Intent;)V

    .line 181
    iget-object v1, p0, Lcom/prey/activities/SignInActivity$3;->this$0:Lcom/prey/activities/SignInActivity;

    invoke-virtual {v1}, Lcom/prey/activities/SignInActivity;->finish()V

    .line 182
    return-void
.end method
