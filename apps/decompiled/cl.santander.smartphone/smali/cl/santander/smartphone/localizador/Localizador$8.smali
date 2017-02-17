.class Lcl/santander/smartphone/localizador/Localizador$8;
.super Ljava/lang/Thread;
.source "Localizador.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcl/santander/smartphone/localizador/Localizador;->cargaDialogo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field builder:Landroid/app/AlertDialog$Builder;

.field final synthetic this$0:Lcl/santander/smartphone/localizador/Localizador;

.field private final synthetic val$layout_aux:Landroid/view/View;


# direct methods
.method constructor <init>(Lcl/santander/smartphone/localizador/Localizador;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcl/santander/smartphone/localizador/Localizador$8;->this$0:Lcl/santander/smartphone/localizador/Localizador;

    iput-object p2, p0, Lcl/santander/smartphone/localizador/Localizador$8;->val$layout_aux:Landroid/view/View;

    .line 498
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public interrupt()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 515
    :try_start_0
    iget-object v1, p0, Lcl/santander/smartphone/localizador/Localizador$8;->this$0:Lcl/santander/smartphone/localizador/Localizador;

    # getter for: Lcl/santander/smartphone/localizador/Localizador;->ad_semaphore:Ljava/util/concurrent/Semaphore;
    invoke-static {v1}, Lcl/santander/smartphone/localizador/Localizador;->access$27(Lcl/santander/smartphone/localizador/Localizador;)Ljava/util/concurrent/Semaphore;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 519
    :goto_0
    iget-object v1, p0, Lcl/santander/smartphone/localizador/Localizador$8;->this$0:Lcl/santander/smartphone/localizador/Localizador;

    # getter for: Lcl/santander/smartphone/localizador/Localizador;->pd:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcl/santander/smartphone/localizador/Localizador;->access$26(Lcl/santander/smartphone/localizador/Localizador;)Landroid/app/AlertDialog;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 520
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "Interrupt"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 521
    iget-object v1, p0, Lcl/santander/smartphone/localizador/Localizador$8;->this$0:Lcl/santander/smartphone/localizador/Localizador;

    # getter for: Lcl/santander/smartphone/localizador/Localizador;->pd:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcl/santander/smartphone/localizador/Localizador;->access$26(Lcl/santander/smartphone/localizador/Localizador;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 522
    iget-object v1, p0, Lcl/santander/smartphone/localizador/Localizador$8;->this$0:Lcl/santander/smartphone/localizador/Localizador;

    invoke-static {v1, v3}, Lcl/santander/smartphone/localizador/Localizador;->access$25(Lcl/santander/smartphone/localizador/Localizador;Landroid/app/AlertDialog;)V

    .line 523
    iget-object v1, p0, Lcl/santander/smartphone/localizador/Localizador$8;->this$0:Lcl/santander/smartphone/localizador/Localizador;

    invoke-static {v1, v3}, Lcl/santander/smartphone/localizador/Localizador;->access$28(Lcl/santander/smartphone/localizador/Localizador;Ljava/lang/Thread;)V

    .line 525
    :cond_0
    return-void

    .line 516
    :catch_0
    move-exception v0

    .line 517
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public run()V
    .locals 2

    .prologue
    .line 502
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 503
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcl/santander/smartphone/localizador/Localizador$8;->this$0:Lcl/santander/smartphone/localizador/Localizador;

    iget-object v1, v1, Lcl/santander/smartphone/localizador/Localizador;->fa:Landroid/support/v4/app/FragmentActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcl/santander/smartphone/localizador/Localizador$8;->builder:Landroid/app/AlertDialog$Builder;

    .line 504
    iget-object v0, p0, Lcl/santander/smartphone/localizador/Localizador$8;->builder:Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcl/santander/smartphone/localizador/Localizador$8;->val$layout_aux:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 505
    iget-object v0, p0, Lcl/santander/smartphone/localizador/Localizador$8;->this$0:Lcl/santander/smartphone/localizador/Localizador;

    iget-object v1, p0, Lcl/santander/smartphone/localizador/Localizador$8;->builder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-static {v0, v1}, Lcl/santander/smartphone/localizador/Localizador;->access$25(Lcl/santander/smartphone/localizador/Localizador;Landroid/app/AlertDialog;)V

    .line 506
    iget-object v0, p0, Lcl/santander/smartphone/localizador/Localizador$8;->this$0:Lcl/santander/smartphone/localizador/Localizador;

    # getter for: Lcl/santander/smartphone/localizador/Localizador;->pd:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcl/santander/smartphone/localizador/Localizador;->access$26(Lcl/santander/smartphone/localizador/Localizador;)Landroid/app/AlertDialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 507
    iget-object v0, p0, Lcl/santander/smartphone/localizador/Localizador$8;->this$0:Lcl/santander/smartphone/localizador/Localizador;

    # getter for: Lcl/santander/smartphone/localizador/Localizador;->ad_semaphore:Ljava/util/concurrent/Semaphore;
    invoke-static {v0}, Lcl/santander/smartphone/localizador/Localizador;->access$27(Lcl/santander/smartphone/localizador/Localizador;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 508
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 509
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 510
    return-void
.end method
