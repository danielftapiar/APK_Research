.class Lcl/santander/smartphone/ServicesManager$1;
.super Ljava/lang/Thread;
.source "ServicesManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcl/santander/smartphone/ServicesManager;->showProgress(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field m_Progress:Landroid/app/ProgressDialog;

.field private final synthetic val$_act:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcl/santander/smartphone/ServicesManager$1;->val$_act:Landroid/app/Activity;

    .line 125
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public interrupt()V
    .locals 2

    .prologue
    .line 145
    :try_start_0
    # getter for: Lcl/santander/smartphone/ServicesManager;->pd_semaphore:Ljava/util/concurrent/Semaphore;
    invoke-static {}, Lcl/santander/smartphone/ServicesManager;->access$0()Ljava/util/concurrent/Semaphore;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    :goto_0
    iget-object v1, p0, Lcl/santander/smartphone/ServicesManager$1;->m_Progress:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 153
    return-void

    .line 146
    :catch_0
    move-exception v0

    .line 148
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public run()V
    .locals 3

    .prologue
    .line 129
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 130
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcl/santander/smartphone/ServicesManager$1;->val$_act:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcl/santander/smartphone/ServicesManager$1;->m_Progress:Landroid/app/ProgressDialog;

    .line 131
    iget-object v0, p0, Lcl/santander/smartphone/ServicesManager$1;->m_Progress:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcl/santander/smartphone/ServicesManager$1;->val$_act:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 132
    const v2, 0x7f0500be

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 131
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 134
    iget-object v0, p0, Lcl/santander/smartphone/ServicesManager$1;->m_Progress:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 136
    iget-object v0, p0, Lcl/santander/smartphone/ServicesManager$1;->m_Progress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 137
    # getter for: Lcl/santander/smartphone/ServicesManager;->pd_semaphore:Ljava/util/concurrent/Semaphore;
    invoke-static {}, Lcl/santander/smartphone/ServicesManager;->access$0()Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 138
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 139
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 141
    return-void
.end method
