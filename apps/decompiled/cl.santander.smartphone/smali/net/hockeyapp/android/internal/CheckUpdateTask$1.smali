.class Lnet/hockeyapp/android/internal/CheckUpdateTask$1;
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


# direct methods
.method constructor <init>(Lnet/hockeyapp/android/internal/CheckUpdateTask;)V
    .locals 0

    .prologue
    .line 258
    iput-object p1, p0, Lnet/hockeyapp/android/internal/CheckUpdateTask$1;->this$0:Lnet/hockeyapp/android/internal/CheckUpdateTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 260
    iget-object v0, p0, Lnet/hockeyapp/android/internal/CheckUpdateTask$1;->this$0:Lnet/hockeyapp/android/internal/CheckUpdateTask;

    # invokes: Lnet/hockeyapp/android/internal/CheckUpdateTask;->cleanUp()V
    invoke-static {v0}, Lnet/hockeyapp/android/internal/CheckUpdateTask;->access$000(Lnet/hockeyapp/android/internal/CheckUpdateTask;)V

    .line 261
    return-void
.end method
