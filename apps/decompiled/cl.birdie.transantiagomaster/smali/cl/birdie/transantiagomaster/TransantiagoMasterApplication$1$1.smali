.class final Lcl/birdie/transantiagomaster/TransantiagoMasterApplication$1$1;
.super Ljava/lang/Object;
.source "TransantiagoMasterApplication.java"

# interfaces
.implements Lcl/birdie/transantiagomaster/facebook/IFBCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcl/birdie/transantiagomaster/TransantiagoMasterApplication$1;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcl/birdie/transantiagomaster/TransantiagoMasterApplication$1;

.field private final synthetic val$downloadId:J


# direct methods
.method constructor <init>(Lcl/birdie/transantiagomaster/TransantiagoMasterApplication$1;J)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication$1$1;->this$1:Lcl/birdie/transantiagomaster/TransantiagoMasterApplication$1;

    iput-wide p2, p0, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication$1$1;->val$downloadId:J

    .line 307
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(Ljava/lang/Object;)V
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 329
    iget-object v0, p0, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication$1$1;->this$1:Lcl/birdie/transantiagomaster/TransantiagoMasterApplication$1;

    # getter for: Lcl/birdie/transantiagomaster/TransantiagoMasterApplication$1;->this$0:Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;
    invoke-static {v0}, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication$1;->access$0(Lcl/birdie/transantiagomaster/TransantiagoMasterApplication$1;)Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f060166

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 330
    return-void
.end method

.method public final onSuccess(Ljava/lang/Object;)V
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    .line 311
    iget-object v0, p0, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication$1$1;->this$1:Lcl/birdie/transantiagomaster/TransantiagoMasterApplication$1;

    # getter for: Lcl/birdie/transantiagomaster/TransantiagoMasterApplication$1;->this$0:Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;
    invoke-static {v0}, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication$1;->access$0(Lcl/birdie/transantiagomaster/TransantiagoMasterApplication$1;)Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f060165

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 314
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "borrando descarga "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication$1$1;->val$downloadId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 315
    iget-object v0, p0, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication$1$1;->this$1:Lcl/birdie/transantiagomaster/TransantiagoMasterApplication$1;

    # getter for: Lcl/birdie/transantiagomaster/TransantiagoMasterApplication$1;->this$0:Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;
    invoke-static {v0}, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication$1;->access$0(Lcl/birdie/transantiagomaster/TransantiagoMasterApplication$1;)Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;

    move-result-object v0

    const-string v1, "download"

    invoke-virtual {v0, v1}, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/DownloadManager;

    .line 316
    const/4 v1, 0x1

    new-array v1, v1, [J

    const/4 v2, 0x0

    iget-wide v3, p0, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication$1$1;->val$downloadId:J

    aput-wide v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/app/DownloadManager;->remove([J)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 325
    :goto_0
    return-void

    .line 318
    :catch_0
    move-exception v0

    const-string v0, "TransantiagoMasterApplication"

    const-string v1, "error borrando archivo desde download manager"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
