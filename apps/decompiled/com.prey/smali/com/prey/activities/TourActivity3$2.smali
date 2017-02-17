.class Lcom/prey/activities/TourActivity3$2;
.super Ljava/lang/Object;
.source "TourActivity3.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prey/activities/TourActivity3;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/prey/activities/TourActivity3;


# direct methods
.method constructor <init>(Lcom/prey/activities/TourActivity3;)V
    .locals 0
    .param p1, "this$0"    # Lcom/prey/activities/TourActivity3;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/prey/activities/TourActivity3$2;->this$0:Lcom/prey/activities/TourActivity3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 67
    iget-object v1, p0, Lcom/prey/activities/TourActivity3$2;->this$0:Lcom/prey/activities/TourActivity3;

    invoke-virtual {v1}, Lcom/prey/activities/TourActivity3;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/prey/PreyConfig;->getPreyConfig(Landroid/content/Context;)Lcom/prey/PreyConfig;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/prey/PreyConfig;->setProtectTour(Z)V

    .line 68
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/prey/activities/TourActivity3$2;->this$0:Lcom/prey/activities/TourActivity3;

    invoke-virtual {v1}, Lcom/prey/activities/TourActivity3;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/prey/activities/CheckPasswordActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 69
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/prey/activities/TourActivity3$2;->this$0:Lcom/prey/activities/TourActivity3;

    invoke-virtual {v1, v0}, Lcom/prey/activities/TourActivity3;->startActivity(Landroid/content/Intent;)V

    .line 70
    iget-object v1, p0, Lcom/prey/activities/TourActivity3$2;->this$0:Lcom/prey/activities/TourActivity3;

    invoke-virtual {v1}, Lcom/prey/activities/TourActivity3;->finish()V

    .line 71
    return-void
.end method
