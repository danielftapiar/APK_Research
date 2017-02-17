.class Lnet/veritran/component/VTMap$ProcessActionTask$1;
.super Ljava/lang/Object;
.source "VTMap.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/veritran/component/VTMap$ProcessActionTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lnet/veritran/component/VTMap$ProcessActionTask;

.field final synthetic val$action:Ljava/lang/String;


# direct methods
.method constructor <init>(Lnet/veritran/component/VTMap$ProcessActionTask;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lnet/veritran/component/VTMap$ProcessActionTask;

    .prologue
    .line 41
    iput-object p1, p0, Lnet/veritran/component/VTMap$ProcessActionTask$1;->this$1:Lnet/veritran/component/VTMap$ProcessActionTask;

    iput-object p2, p0, Lnet/veritran/component/VTMap$ProcessActionTask$1;->val$action:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 43
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v0

    iget-object v1, p0, Lnet/veritran/component/VTMap$ProcessActionTask$1;->val$action:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lnet/veritran/VTUserApplicationSmart;->processAction(Ljava/lang/String;)V

    .line 44
    return-void
.end method
