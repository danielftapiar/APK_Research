.class Lnet/veritran/VTUserApplicationSmart$ProcessAction;
.super Ljava/lang/Object;
.source "VTUserApplicationSmart.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/veritran/VTUserApplicationSmart;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProcessAction"
.end annotation


# instance fields
.field private action:Ljava/lang/String;

.field final synthetic this$0:Lnet/veritran/VTUserApplicationSmart;


# direct methods
.method public constructor <init>(Lnet/veritran/VTUserApplicationSmart;Ljava/lang/String;)V
    .locals 0
    .param p2, "action"    # Ljava/lang/String;

    .prologue
    .line 2750
    iput-object p1, p0, Lnet/veritran/VTUserApplicationSmart$ProcessAction;->this$0:Lnet/veritran/VTUserApplicationSmart;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2751
    iput-object p2, p0, Lnet/veritran/VTUserApplicationSmart$ProcessAction;->action:Ljava/lang/String;

    .line 2752
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2755
    iget-object v0, p0, Lnet/veritran/VTUserApplicationSmart$ProcessAction;->this$0:Lnet/veritran/VTUserApplicationSmart;

    invoke-virtual {v0}, Lnet/veritran/VTUserApplicationSmart;->getCurrentActivity()Lnet/veritran/VTAbstractActivity;

    move-result-object v0

    check-cast v0, Lnet/veritran/VTCommonActivity;

    iget-object v1, p0, Lnet/veritran/VTUserApplicationSmart$ProcessAction;->action:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lnet/veritran/VTCommonActivity;->processAction(Ljava/lang/String;)V

    .line 2756
    return-void
.end method
