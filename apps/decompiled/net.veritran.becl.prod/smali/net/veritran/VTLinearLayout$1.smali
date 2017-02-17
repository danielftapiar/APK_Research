.class Lnet/veritran/VTLinearLayout$1;
.super Ljava/lang/Object;
.source "VTLinearLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/veritran/VTLinearLayout;->onSizeChanged(IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/veritran/VTLinearLayout;


# direct methods
.method constructor <init>(Lnet/veritran/VTLinearLayout;)V
    .locals 0
    .param p1, "this$0"    # Lnet/veritran/VTLinearLayout;

    .prologue
    .line 33
    iput-object p1, p0, Lnet/veritran/VTLinearLayout$1;->this$0:Lnet/veritran/VTLinearLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lnet/veritran/VTLinearLayout$1;->this$0:Lnet/veritran/VTLinearLayout;

    invoke-virtual {v0}, Lnet/veritran/VTLinearLayout;->requestLayout()V

    .line 38
    return-void
.end method
