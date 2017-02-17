.class Lcom/prey/activities/CheckPasswordActivity$3;
.super Ljava/lang/Object;
.source "CheckPasswordActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prey/activities/CheckPasswordActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/prey/activities/CheckPasswordActivity;


# direct methods
.method constructor <init>(Lcom/prey/activities/CheckPasswordActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/prey/activities/CheckPasswordActivity;

    .prologue
    .line 165
    iput-object p1, p0, Lcom/prey/activities/CheckPasswordActivity$3;->this$0:Lcom/prey/activities/CheckPasswordActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 168
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/prey/activities/CheckPasswordActivity$3;->this$0:Lcom/prey/activities/CheckPasswordActivity;

    invoke-virtual {v2}, Lcom/prey/activities/CheckPasswordActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    const-class v3, Lcom/prey/activities/TourActivity1;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 169
    .local v1, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 170
    .local v0, "b":Landroid/os/Bundle;
    const-string v2, "id"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 171
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 172
    iget-object v2, p0, Lcom/prey/activities/CheckPasswordActivity$3;->this$0:Lcom/prey/activities/CheckPasswordActivity;

    invoke-virtual {v2, v1}, Lcom/prey/activities/CheckPasswordActivity;->startActivity(Landroid/content/Intent;)V

    .line 173
    iget-object v2, p0, Lcom/prey/activities/CheckPasswordActivity$3;->this$0:Lcom/prey/activities/CheckPasswordActivity;

    invoke-virtual {v2}, Lcom/prey/activities/CheckPasswordActivity;->finish()V

    .line 174
    return-void
.end method
