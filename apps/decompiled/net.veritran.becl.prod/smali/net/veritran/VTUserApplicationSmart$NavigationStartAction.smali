.class Lnet/veritran/VTUserApplicationSmart$NavigationStartAction;
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
    name = "NavigationStartAction"
.end annotation


# instance fields
.field final synthetic this$0:Lnet/veritran/VTUserApplicationSmart;


# direct methods
.method public constructor <init>(Lnet/veritran/VTUserApplicationSmart;)V
    .locals 0

    .prologue
    .line 2762
    iput-object p1, p0, Lnet/veritran/VTUserApplicationSmart$NavigationStartAction;->this$0:Lnet/veritran/VTUserApplicationSmart;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2763
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 2766
    iget-object v0, p0, Lnet/veritran/VTUserApplicationSmart$NavigationStartAction;->this$0:Lnet/veritran/VTUserApplicationSmart;

    invoke-virtual {v0}, Lnet/veritran/VTUserApplicationSmart;->getCurrentActivity()Lnet/veritran/VTAbstractActivity;

    move-result-object v0

    check-cast v0, Lnet/veritran/VTCommonActivity;

    invoke-virtual {v0}, Lnet/veritran/VTCommonActivity;->navigationStart()V

    .line 2767
    return-void
.end method
