.class Lnet/hockeyapp/android/internal/CheckUpdateTask$2;
.super Ljava/lang/Object;
.source "CheckUpdateTask.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/hockeyapp/android/internal/CheckUpdateTask;->showDialog(Lorg/json/JSONArray;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/hockeyapp/android/internal/CheckUpdateTask;

.field final synthetic val$updateInfo:Lorg/json/JSONArray;


# direct methods
.method constructor <init>(Lnet/hockeyapp/android/internal/CheckUpdateTask;Lorg/json/JSONArray;)V
    .locals 0

    .prologue
    .line 264
    iput-object p1, p0, Lnet/hockeyapp/android/internal/CheckUpdateTask$2;->this$0:Lnet/hockeyapp/android/internal/CheckUpdateTask;

    iput-object p2, p0, Lnet/hockeyapp/android/internal/CheckUpdateTask$2;->val$updateInfo:Lorg/json/JSONArray;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 266
    iget-object v0, p0, Lnet/hockeyapp/android/internal/CheckUpdateTask$2;->this$0:Lnet/hockeyapp/android/internal/CheckUpdateTask;

    invoke-virtual {v0}, Lnet/hockeyapp/android/internal/CheckUpdateTask;->getCachingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 267
    iget-object v0, p0, Lnet/hockeyapp/android/internal/CheckUpdateTask$2;->this$0:Lnet/hockeyapp/android/internal/CheckUpdateTask;

    # getter for: Lnet/hockeyapp/android/internal/CheckUpdateTask;->activity:Landroid/app/Activity;
    invoke-static {v0}, Lnet/hockeyapp/android/internal/CheckUpdateTask;->access$100(Lnet/hockeyapp/android/internal/CheckUpdateTask;)Landroid/app/Activity;

    move-result-object v0

    const-string v1, "[]"

    invoke-static {v0, v1}, Lnet/hockeyapp/android/internal/VersionCache;->setVersionInfo(Landroid/content/Context;Ljava/lang/String;)V

    .line 270
    :cond_0
    invoke-static {}, Lnet/hockeyapp/android/UpdateManager;->fragmentsSupported()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/hockeyapp/android/internal/CheckUpdateTask$2;->this$0:Lnet/hockeyapp/android/internal/CheckUpdateTask;

    # getter for: Lnet/hockeyapp/android/internal/CheckUpdateTask;->activity:Landroid/app/Activity;
    invoke-static {v0}, Lnet/hockeyapp/android/internal/CheckUpdateTask;->access$100(Lnet/hockeyapp/android/internal/CheckUpdateTask;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lnet/hockeyapp/android/UpdateManager;->runsOnTablet(Landroid/app/Activity;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 271
    iget-object v0, p0, Lnet/hockeyapp/android/internal/CheckUpdateTask$2;->this$0:Lnet/hockeyapp/android/internal/CheckUpdateTask;

    iget-object v1, p0, Lnet/hockeyapp/android/internal/CheckUpdateTask$2;->val$updateInfo:Lorg/json/JSONArray;

    # invokes: Lnet/hockeyapp/android/internal/CheckUpdateTask;->showUpdateFragment(Lorg/json/JSONArray;)V
    invoke-static {v0, v1}, Lnet/hockeyapp/android/internal/CheckUpdateTask;->access$200(Lnet/hockeyapp/android/internal/CheckUpdateTask;Lorg/json/JSONArray;)V

    .line 276
    :goto_0
    return-void

    .line 274
    :cond_1
    iget-object v0, p0, Lnet/hockeyapp/android/internal/CheckUpdateTask$2;->this$0:Lnet/hockeyapp/android/internal/CheckUpdateTask;

    iget-object v1, p0, Lnet/hockeyapp/android/internal/CheckUpdateTask$2;->val$updateInfo:Lorg/json/JSONArray;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    # invokes: Lnet/hockeyapp/android/internal/CheckUpdateTask;->startUpdateIntent(Lorg/json/JSONArray;Ljava/lang/Boolean;)V
    invoke-static {v0, v1, v2}, Lnet/hockeyapp/android/internal/CheckUpdateTask;->access$300(Lnet/hockeyapp/android/internal/CheckUpdateTask;Lorg/json/JSONArray;Ljava/lang/Boolean;)V

    goto :goto_0
.end method
