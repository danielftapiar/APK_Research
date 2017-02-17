.class Lnet/veritran/GridViewAdapter$1;
.super Ljava/lang/Object;
.source "GridViewAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/veritran/GridViewAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/veritran/GridViewAdapter;


# direct methods
.method constructor <init>(Lnet/veritran/GridViewAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lnet/veritran/GridViewAdapter;

    .prologue
    .line 121
    iput-object p1, p0, Lnet/veritran/GridViewAdapter$1;->this$0:Lnet/veritran/GridViewAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 126
    iget-object v0, p0, Lnet/veritran/GridViewAdapter$1;->this$0:Lnet/veritran/GridViewAdapter;

    # getter for: Lnet/veritran/GridViewAdapter;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lnet/veritran/GridViewAdapter;->access$000(Lnet/veritran/GridViewAdapter;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "click"

    invoke-static {v0, v1}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    .line 128
    return-void
.end method
