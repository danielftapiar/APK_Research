.class Lcl/santander/smartphone/Carga$2;
.super Ljava/lang/Object;
.source "Carga.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcl/santander/smartphone/Carga;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcl/santander/smartphone/Carga;


# direct methods
.method constructor <init>(Lcl/santander/smartphone/Carga;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcl/santander/smartphone/Carga$2;->this$0:Lcl/santander/smartphone/Carga;

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 68
    const-wide/16 v2, 0x3e8

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 69
    iget-object v2, p0, Lcl/santander/smartphone/Carga$2;->this$0:Lcl/santander/smartphone/Carga;

    iget-object v2, v2, Lcl/santander/smartphone/Carga;->handler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 70
    const-wide/16 v2, 0x7d0

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    :goto_0
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcl/santander/smartphone/Carga$2;->this$0:Lcl/santander/smartphone/Carga;

    const-class v3, Lcl/santander/smartphone/Main;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 79
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcl/santander/smartphone/Carga$2;->this$0:Lcl/santander/smartphone/Carga;

    invoke-virtual {v2, v1}, Lcl/santander/smartphone/Carga;->startActivity(Landroid/content/Intent;)V

    .line 80
    iget-object v2, p0, Lcl/santander/smartphone/Carga$2;->this$0:Lcl/santander/smartphone/Carga;

    invoke-virtual {v2}, Lcl/santander/smartphone/Carga;->finish()V

    .line 81
    return-void

    .line 71
    .end local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 72
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
