.class Lnet/veritran/VTUserApplicationSmart$2$1;
.super Ljava/lang/Object;
.source "VTUserApplicationSmart.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/veritran/VTUserApplicationSmart$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lnet/veritran/VTUserApplicationSmart$2;


# direct methods
.method constructor <init>(Lnet/veritran/VTUserApplicationSmart$2;)V
    .locals 0
    .param p1, "this$1"    # Lnet/veritran/VTUserApplicationSmart$2;

    .prologue
    .line 2923
    iput-object p1, p0, Lnet/veritran/VTUserApplicationSmart$2$1;->this$1:Lnet/veritran/VTUserApplicationSmart$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 2928
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 2930
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v0

    const-string v1, "_APPUPDATE"

    invoke-virtual {v0, v1}, Lnet/veritran/VTUserApplicationSmart;->processAction(Ljava/lang/String;)V

    .line 2931
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v0

    invoke-virtual {v0}, Lnet/veritran/VTUserApplicationSmart;->closeApplication()V

    .line 2932
    return-void
.end method
