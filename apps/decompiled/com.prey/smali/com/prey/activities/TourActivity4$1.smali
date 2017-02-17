.class Lcom/prey/activities/TourActivity4$1;
.super Ljava/lang/Object;
.source "TourActivity4.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prey/activities/TourActivity4;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/prey/activities/TourActivity4;


# direct methods
.method constructor <init>(Lcom/prey/activities/TourActivity4;)V
    .locals 0
    .param p1, "this$0"    # Lcom/prey/activities/TourActivity4;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/prey/activities/TourActivity4$1;->this$0:Lcom/prey/activities/TourActivity4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 52
    const/4 v0, 0x0

    .line 54
    .local v0, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/prey/activities/TourActivity4$1;->this$0:Lcom/prey/activities/TourActivity4;

    invoke-virtual {v1}, Lcom/prey/activities/TourActivity4;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/prey/activities/TourActivity5;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 57
    .restart local v0    # "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/prey/activities/TourActivity4$1;->this$0:Lcom/prey/activities/TourActivity4;

    invoke-virtual {v1, v0}, Lcom/prey/activities/TourActivity4;->startActivity(Landroid/content/Intent;)V

    .line 58
    iget-object v1, p0, Lcom/prey/activities/TourActivity4$1;->this$0:Lcom/prey/activities/TourActivity4;

    invoke-virtual {v1}, Lcom/prey/activities/TourActivity4;->finish()V

    .line 59
    return-void
.end method
