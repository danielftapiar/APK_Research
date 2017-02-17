.class Lcom/prey/activities/TourActivity5$2;
.super Ljava/lang/Object;
.source "TourActivity5.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prey/activities/TourActivity5;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/prey/activities/TourActivity5;


# direct methods
.method constructor <init>(Lcom/prey/activities/TourActivity5;)V
    .locals 0
    .param p1, "this$0"    # Lcom/prey/activities/TourActivity5;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/prey/activities/TourActivity5$2;->this$0:Lcom/prey/activities/TourActivity5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 68
    iget-object v1, p0, Lcom/prey/activities/TourActivity5$2;->this$0:Lcom/prey/activities/TourActivity5;

    invoke-virtual {v1}, Lcom/prey/activities/TourActivity5;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/prey/PreyConfig;->getPreyConfig(Landroid/content/Context;)Lcom/prey/PreyConfig;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/prey/PreyConfig;->setProtectTour(Z)V

    .line 69
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/prey/activities/TourActivity5$2;->this$0:Lcom/prey/activities/TourActivity5;

    invoke-virtual {v1}, Lcom/prey/activities/TourActivity5;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/prey/activities/CheckPasswordActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 70
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/prey/activities/TourActivity5$2;->this$0:Lcom/prey/activities/TourActivity5;

    invoke-virtual {v1, v0}, Lcom/prey/activities/TourActivity5;->startActivity(Landroid/content/Intent;)V

    .line 71
    iget-object v1, p0, Lcom/prey/activities/TourActivity5$2;->this$0:Lcom/prey/activities/TourActivity5;

    invoke-virtual {v1}, Lcom/prey/activities/TourActivity5;->finish()V

    .line 72
    return-void
.end method
