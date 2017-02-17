.class Lcom/prey/activities/TourActivity2$1;
.super Ljava/lang/Object;
.source "TourActivity2.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prey/activities/TourActivity2;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/prey/activities/TourActivity2;


# direct methods
.method constructor <init>(Lcom/prey/activities/TourActivity2;)V
    .locals 0
    .param p1, "this$0"    # Lcom/prey/activities/TourActivity2;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/prey/activities/TourActivity2$1;->this$0:Lcom/prey/activities/TourActivity2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 54
    const/4 v0, 0x0

    .line 56
    .local v0, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/prey/activities/TourActivity2$1;->this$0:Lcom/prey/activities/TourActivity2;

    invoke-virtual {v1}, Lcom/prey/activities/TourActivity2;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/prey/activities/TourActivity3;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 59
    .restart local v0    # "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/prey/activities/TourActivity2$1;->this$0:Lcom/prey/activities/TourActivity2;

    invoke-virtual {v1, v0}, Lcom/prey/activities/TourActivity2;->startActivity(Landroid/content/Intent;)V

    .line 60
    iget-object v1, p0, Lcom/prey/activities/TourActivity2$1;->this$0:Lcom/prey/activities/TourActivity2;

    invoke-virtual {v1}, Lcom/prey/activities/TourActivity2;->finish()V

    .line 61
    return-void
.end method
