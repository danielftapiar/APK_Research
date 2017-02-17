.class Lnet/veritran/VTUserApplicationSmart$3;
.super Ljava/lang/Object;
.source "VTUserApplicationSmart.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/veritran/VTUserApplicationSmart;->closeMessage(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/veritran/VTUserApplicationSmart;

.field final synthetic val$id:Ljava/lang/String;


# direct methods
.method constructor <init>(Lnet/veritran/VTUserApplicationSmart;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lnet/veritran/VTUserApplicationSmart;

    .prologue
    .line 3079
    iput-object p1, p0, Lnet/veritran/VTUserApplicationSmart$3;->this$0:Lnet/veritran/VTUserApplicationSmart;

    iput-object p2, p0, Lnet/veritran/VTUserApplicationSmart$3;->val$id:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 3083
    iget-object v0, p0, Lnet/veritran/VTUserApplicationSmart$3;->this$0:Lnet/veritran/VTUserApplicationSmart;

    iget-object v0, v0, Lnet/veritran/VTUserApplicationSmart;->popupsProcessing:Ljava/util/HashMap;

    iget-object v1, p0, Lnet/veritran/VTUserApplicationSmart$3;->val$id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/veritran/component/VTPopup;

    invoke-virtual {v0}, Lnet/veritran/component/VTPopup;->hide()V

    .line 3084
    iget-object v0, p0, Lnet/veritran/VTUserApplicationSmart$3;->this$0:Lnet/veritran/VTUserApplicationSmart;

    iget-object v0, v0, Lnet/veritran/VTUserApplicationSmart;->popupsProcessing:Ljava/util/HashMap;

    iget-object v1, p0, Lnet/veritran/VTUserApplicationSmart$3;->val$id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3085
    return-void
.end method
