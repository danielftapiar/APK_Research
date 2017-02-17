.class Lnet/veritran/android/implementation/push/PushLibrary$1$1;
.super Ljava/lang/Object;
.source "PushLibrary.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/veritran/android/implementation/push/PushLibrary$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lnet/veritran/android/implementation/push/PushLibrary$1;


# direct methods
.method constructor <init>(Lnet/veritran/android/implementation/push/PushLibrary$1;)V
    .locals 0
    .param p1, "this$1"    # Lnet/veritran/android/implementation/push/PushLibrary$1;

    .prologue
    .line 138
    iput-object p1, p0, Lnet/veritran/android/implementation/push/PushLibrary$1$1;->this$1:Lnet/veritran/android/implementation/push/PushLibrary$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 140
    invoke-static {}, Lnet/veritran/vtuserapplication/model/ProcessHelper;->getInstance()Lnet/veritran/vtuserapplication/model/ProcessHelper;

    move-result-object v0

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/model/ProcessHelper;->notifyFunctionEnd()V

    .line 141
    return-void
.end method
