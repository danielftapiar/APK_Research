.class Lnet/veritran/VTCommonActivity$6;
.super Ljava/lang/Object;
.source "VTCommonActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/veritran/VTCommonActivity;->disableMainView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/veritran/VTCommonActivity;


# direct methods
.method constructor <init>(Lnet/veritran/VTCommonActivity;)V
    .locals 0
    .param p1, "this$0"    # Lnet/veritran/VTCommonActivity;

    .prologue
    .line 1728
    iput-object p1, p0, Lnet/veritran/VTCommonActivity$6;->this$0:Lnet/veritran/VTCommonActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/16 v1, 0x10

    .line 1732
    iget-object v0, p0, Lnet/veritran/VTCommonActivity$6;->this$0:Lnet/veritran/VTCommonActivity;

    invoke-virtual {v0}, Lnet/veritran/VTCommonActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 1734
    return-void
.end method
