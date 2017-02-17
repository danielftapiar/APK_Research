.class Lcl/santander/smartphone/Ultimos_Movimientos$5;
.super Ljava/lang/Object;
.source "Ultimos_Movimientos.java"

# interfaces
.implements Lcom/markupartist/android/widget/PullToRefreshListView$OnRefreshListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcl/santander/smartphone/Ultimos_Movimientos;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcl/santander/smartphone/Ultimos_Movimientos;


# direct methods
.method constructor <init>(Lcl/santander/smartphone/Ultimos_Movimientos;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcl/santander/smartphone/Ultimos_Movimientos$5;->this$0:Lcl/santander/smartphone/Ultimos_Movimientos;

    .line 242
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefresh()V
    .locals 4

    .prologue
    .line 245
    iget-object v0, p0, Lcl/santander/smartphone/Ultimos_Movimientos$5;->this$0:Lcl/santander/smartphone/Ultimos_Movimientos;

    new-instance v1, Lcl/santander/smartphone/Ultimos_Movimientos$RefreshDataTask;

    iget-object v2, p0, Lcl/santander/smartphone/Ultimos_Movimientos$5;->this$0:Lcl/santander/smartphone/Ultimos_Movimientos;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcl/santander/smartphone/Ultimos_Movimientos$RefreshDataTask;-><init>(Lcl/santander/smartphone/Ultimos_Movimientos;Lcl/santander/smartphone/Ultimos_Movimientos$RefreshDataTask;)V

    invoke-static {v0, v1}, Lcl/santander/smartphone/Ultimos_Movimientos;->access$4(Lcl/santander/smartphone/Ultimos_Movimientos;Lcl/santander/smartphone/Ultimos_Movimientos$RefreshDataTask;)V

    .line 246
    iget-object v0, p0, Lcl/santander/smartphone/Ultimos_Movimientos$5;->this$0:Lcl/santander/smartphone/Ultimos_Movimientos;

    # getter for: Lcl/santander/smartphone/Ultimos_Movimientos;->refreshTask:Lcl/santander/smartphone/Ultimos_Movimientos$RefreshDataTask;
    invoke-static {v0}, Lcl/santander/smartphone/Ultimos_Movimientos;->access$5(Lcl/santander/smartphone/Ultimos_Movimientos;)Lcl/santander/smartphone/Ultimos_Movimientos$RefreshDataTask;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcl/santander/smartphone/Ultimos_Movimientos$RefreshDataTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 247
    return-void
.end method
