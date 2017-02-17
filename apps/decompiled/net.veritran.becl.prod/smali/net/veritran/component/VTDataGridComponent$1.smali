.class Lnet/veritran/component/VTDataGridComponent$1;
.super Ljava/lang/Object;
.source "VTDataGridComponent.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/veritran/component/VTDataGridComponent;->scrollToSection(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/veritran/component/VTDataGridComponent;

.field final synthetic val$yTo:I


# direct methods
.method constructor <init>(Lnet/veritran/component/VTDataGridComponent;I)V
    .locals 0
    .param p1, "this$0"    # Lnet/veritran/component/VTDataGridComponent;

    .prologue
    .line 838
    iput-object p1, p0, Lnet/veritran/component/VTDataGridComponent$1;->this$0:Lnet/veritran/component/VTDataGridComponent;

    iput p2, p0, Lnet/veritran/component/VTDataGridComponent$1;->val$yTo:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 842
    iget-object v0, p0, Lnet/veritran/component/VTDataGridComponent$1;->this$0:Lnet/veritran/component/VTDataGridComponent;

    iget v1, p0, Lnet/veritran/component/VTDataGridComponent$1;->val$yTo:I

    # setter for: Lnet/veritran/component/VTDataGridComponent;->lastStroll:I
    invoke-static {v0, v1}, Lnet/veritran/component/VTDataGridComponent;->access$002(Lnet/veritran/component/VTDataGridComponent;I)I

    .line 843
    iget-object v0, p0, Lnet/veritran/component/VTDataGridComponent$1;->this$0:Lnet/veritran/component/VTDataGridComponent;

    # getter for: Lnet/veritran/component/VTDataGridComponent;->vtScroller:Lnet/veritran/component/view/VTScrollTableWrapper;
    invoke-static {v0}, Lnet/veritran/component/VTDataGridComponent;->access$100(Lnet/veritran/component/VTDataGridComponent;)Lnet/veritran/component/view/VTScrollTableWrapper;

    move-result-object v0

    const/4 v1, 0x0

    iget v2, p0, Lnet/veritran/component/VTDataGridComponent$1;->val$yTo:I

    invoke-virtual {v0, v1, v2}, Lnet/veritran/component/view/VTScrollTableWrapper;->smoothScrollTo(II)V

    .line 844
    return-void
.end method
