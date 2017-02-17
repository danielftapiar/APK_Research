.class Lcom/prey/activities/CheckPasswordActivity$4;
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
    .line 178
    iput-object p1, p0, Lcom/prey/activities/CheckPasswordActivity$4;->this$0:Lcom/prey/activities/CheckPasswordActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 181
    iget-object v0, p0, Lcom/prey/activities/CheckPasswordActivity$4;->this$0:Lcom/prey/activities/CheckPasswordActivity;

    invoke-virtual {v0}, Lcom/prey/activities/CheckPasswordActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/prey/PreyConfig;->getPreyConfig(Landroid/content/Context;)Lcom/prey/PreyConfig;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/prey/PreyConfig;->setProtectTour(Z)V

    .line 182
    iget-object v0, p0, Lcom/prey/activities/CheckPasswordActivity$4;->this$0:Lcom/prey/activities/CheckPasswordActivity;

    invoke-virtual {v0}, Lcom/prey/activities/CheckPasswordActivity;->onResume()V

    .line 183
    return-void
.end method
